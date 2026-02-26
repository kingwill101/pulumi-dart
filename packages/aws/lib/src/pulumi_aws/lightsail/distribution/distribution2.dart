import 'package:pulumi/pulumi.dart';
import '../distribution_cache_behavior/distribution_cache_behavior.dart';
import '../distribution_cache_behavior_settings/distribution_cache_behavior_settings.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior2.dart';
import '../distribution_location/distribution_location.dart';
import '../distribution_origin/distribution_origin2.dart';
import 'distribution_args2.dart';

/// Manages a Lightsail content delivery network (CDN) distribution. Use this resource to cache content at edge locations and reduce latency for users accessing your content.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Bucket("example", {
/// name: "example-bucket",
/// bundleId: "small_1_0",
/// });
/// const exampleDistribution = new aws.lightsail.Distribution("example", {
/// name: "example-distribution",
/// bundleId: "small_1_0",
/// origin: {
/// name: example.name,
/// regionName: example.region,
/// },
/// defaultCacheBehavior: {
/// behavior: "cache",
/// },
/// cacheBehaviorSettings: {
/// allowedHttpMethods: "GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE",
/// cachedHttpMethods: "GET,HEAD",
/// defaultTtl: 86400,
/// maximumTtl: 31536000,
/// minimumTtl: 0,
/// forwardedCookies: {
/// option: "none",
/// },
/// forwardedHeaders: {
/// option: "default",
/// },
/// forwardedQueryStrings: {
/// option: false,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Bucket("example",
/// name="example-bucket",
/// bundle_id="small_1_0")
/// example_distribution = aws.lightsail.Distribution("example",
/// name="example-distribution",
/// bundle_id="small_1_0",
/// origin={
/// "name": example.name,
/// "region_name": example.region,
/// },
/// default_cache_behavior={
/// "behavior": "cache",
/// },
/// cache_behavior_settings={
/// "allowed_http_methods": "GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE",
/// "cached_http_methods": "GET,HEAD",
/// "default_ttl": 86400,
/// "maximum_ttl": 31536000,
/// "minimum_ttl": 0,
/// "forwarded_cookies": {
/// "option": "none",
/// },
/// "forwarded_headers": {
/// "option": "default",
/// },
/// "forwarded_query_strings": {
/// "option": False,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Bucket("example", new()
/// {
/// Name = "example-bucket",
/// BundleId = "small_1_0",
/// });
///
/// var exampleDistribution = new Aws.LightSail.Distribution("example", new()
/// {
/// Name = "example-distribution",
/// BundleId = "small_1_0",
/// Origin = new Aws.LightSail.Inputs.DistributionOriginArgs
/// {
/// Name = example.Name,
/// RegionName = example.Region,
/// },
/// DefaultCacheBehavior = new Aws.LightSail.Inputs.DistributionDefaultCacheBehaviorArgs
/// {
/// Behavior = "cache",
/// },
/// CacheBehaviorSettings = new Aws.LightSail.Inputs.DistributionCacheBehaviorSettingsArgs
/// {
/// AllowedHttpMethods = "GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE",
/// CachedHttpMethods = "GET,HEAD",
/// DefaultTtl = 86400,
/// MaximumTtl = 31536000,
/// MinimumTtl = 0,
/// ForwardedCookies = new Aws.LightSail.Inputs.DistributionCacheBehaviorSettingsForwardedCookiesArgs
/// {
/// Option = "none",
/// },
/// ForwardedHeaders = new Aws.LightSail.Inputs.DistributionCacheBehaviorSettingsForwardedHeadersArgs
/// {
/// Option = "default",
/// },
/// ForwardedQueryStrings = new Aws.LightSail.Inputs.DistributionCacheBehaviorSettingsForwardedQueryStringsArgs
/// {
/// Option = false,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lightsail.NewBucket(ctx, "example", &lightsail.BucketArgs{
/// Name:     pulumi.String("example-bucket"),
/// BundleId: pulumi.String("small_1_0"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewDistribution(ctx, "example", &lightsail.DistributionArgs{
/// Name:     pulumi.String("example-distribution"),
/// BundleId: pulumi.String("small_1_0"),
/// Origin: &lightsail.DistributionOriginArgs{
/// Name:       example.Name,
/// RegionName: example.Region,
/// },
/// DefaultCacheBehavior: &lightsail.DistributionDefaultCacheBehaviorArgs{
/// Behavior: pulumi.String("cache"),
/// },
/// CacheBehaviorSettings: &lightsail.DistributionCacheBehaviorSettingsArgs{
/// AllowedHttpMethods: pulumi.String("GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE"),
/// CachedHttpMethods:  pulumi.String("GET,HEAD"),
/// DefaultTtl:         pulumi.Int(86400),
/// MaximumTtl:         pulumi.Int(31536000),
/// MinimumTtl:         pulumi.Int(0),
/// ForwardedCookies: &lightsail.DistributionCacheBehaviorSettingsForwardedCookiesArgs{
/// Option: pulumi.String("none"),
/// },
/// ForwardedHeaders: &lightsail.DistributionCacheBehaviorSettingsForwardedHeadersArgs{
/// Option: pulumi.String("default"),
/// },
/// ForwardedQueryStrings: &lightsail.DistributionCacheBehaviorSettingsForwardedQueryStringsArgs{
/// Option: pulumi.Bool(false),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lightsail.Bucket;
/// import com.pulumi.aws.lightsail.BucketArgs;
/// import com.pulumi.aws.lightsail.Distribution;
/// import com.pulumi.aws.lightsail.DistributionArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionCacheBehaviorSettingsArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionCacheBehaviorSettingsForwardedCookiesArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionCacheBehaviorSettingsForwardedHeadersArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionCacheBehaviorSettingsForwardedQueryStringsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Bucket("example", BucketArgs.builder()
/// .name("example-bucket")
/// .bundleId("small_1_0")
/// .build());
///
/// var exampleDistribution = new Distribution("exampleDistribution", DistributionArgs.builder()
/// .name("example-distribution")
/// .bundleId("small_1_0")
/// .origin(DistributionOriginArgs.builder()
/// .name(example.name())
/// .regionName(example.region())
/// .build())
/// .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
/// .behavior("cache")
/// .build())
/// .cacheBehaviorSettings(DistributionCacheBehaviorSettingsArgs.builder()
/// .allowedHttpMethods("GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE")
/// .cachedHttpMethods("GET,HEAD")
/// .defaultTtl(86400)
/// .maximumTtl(31536000)
/// .minimumTtl(0)
/// .forwardedCookies(DistributionCacheBehaviorSettingsForwardedCookiesArgs.builder()
/// .option("none")
/// .build())
/// .forwardedHeaders(DistributionCacheBehaviorSettingsForwardedHeadersArgs.builder()
/// .option("default")
/// .build())
/// .forwardedQueryStrings(DistributionCacheBehaviorSettingsForwardedQueryStringsArgs.builder()
/// .option(false)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Bucket
/// properties:
/// name: example-bucket
/// bundleId: small_1_0
/// exampleDistribution:
/// type: aws:lightsail:Distribution
/// name: example
/// properties:
/// name: example-distribution
/// bundleId: small_1_0
/// origin:
/// name: ${example.name}
/// regionName: ${example.region}
/// defaultCacheBehavior:
/// behavior: cache
/// cacheBehaviorSettings:
/// allowedHttpMethods: GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE
/// cachedHttpMethods: GET,HEAD
/// defaultTtl: 86400
/// maximumTtl: 3.1536e+07
/// minimumTtl: 0
/// forwardedCookies:
/// option: none
/// forwardedHeaders:
/// option: default
/// forwardedQueryStrings:
/// option: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Instance Origin
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
/// state: "available",
/// filters: [{
/// name: "opt-in-status",
/// values: ["opt-in-not-required"],
/// }],
/// });
/// const exampleStaticIp = new aws.lightsail.StaticIp("example", {name: "example-static-ip"});
/// const exampleInstance = new aws.lightsail.Instance("example", {
/// name: "example-instance",
/// availabilityZone: available.then(available => available.names?.[0]),
/// blueprintId: "amazon_linux_2",
/// bundleId: "micro_1_0",
/// });
/// const example = new aws.lightsail.StaticIpAttachment("example", {
/// staticIpName: exampleStaticIp.name,
/// instanceName: exampleInstance.name,
/// });
/// const exampleDistribution = new aws.lightsail.Distribution("example", {
/// name: "example-distribution",
/// bundleId: "small_1_0",
/// origin: {
/// name: exampleInstance.name,
/// regionName: available.then(available => available.id),
/// },
/// defaultCacheBehavior: {
/// behavior: "cache",
/// },
/// }, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available",
/// filters=[{
/// "name": "opt-in-status",
/// "values": ["opt-in-not-required"],
/// }])
/// example_static_ip = aws.lightsail.StaticIp("example", name="example-static-ip")
/// example_instance = aws.lightsail.Instance("example",
/// name="example-instance",
/// availability_zone=available.names[0],
/// blueprint_id="amazon_linux_2",
/// bundle_id="micro_1_0")
/// example = aws.lightsail.StaticIpAttachment("example",
/// static_ip_name=example_static_ip.name,
/// instance_name=example_instance.name)
/// example_distribution = aws.lightsail.Distribution("example",
/// name="example-distribution",
/// bundle_id="small_1_0",
/// origin={
/// "name": example_instance.name,
/// "region_name": available.id,
/// },
/// default_cache_behavior={
/// "behavior": "cache",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// State = "available",
/// Filters = new[]
/// {
/// new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
/// {
/// Name = "opt-in-status",
/// Values = new[]
/// {
/// "opt-in-not-required",
/// },
/// },
/// },
/// });
///
/// var exampleStaticIp = new Aws.LightSail.StaticIp("example", new()
/// {
/// Name = "example-static-ip",
/// });
///
/// var exampleInstance = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example-instance",
/// AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
/// BlueprintId = "amazon_linux_2",
/// BundleId = "micro_1_0",
/// });
///
/// var example = new Aws.LightSail.StaticIpAttachment("example", new()
/// {
/// StaticIpName = exampleStaticIp.Name,
/// InstanceName = exampleInstance.Name,
/// });
///
/// var exampleDistribution = new Aws.LightSail.Distribution("example", new()
/// {
/// Name = "example-distribution",
/// BundleId = "small_1_0",
/// Origin = new Aws.LightSail.Inputs.DistributionOriginArgs
/// {
/// Name = exampleInstance.Name,
/// RegionName = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Id),
/// },
/// DefaultCacheBehavior = new Aws.LightSail.Inputs.DistributionDefaultCacheBehaviorArgs
/// {
/// Behavior = "cache",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleStaticIp, err := lightsail.NewStaticIp(ctx, "example", &lightsail.StaticIpArgs{
/// Name: pulumi.String("example-static-ip"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleInstance, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example-instance"),
/// AvailabilityZone: pulumi.String(available.Names[0]),
/// BlueprintId:      pulumi.String("amazon_linux_2"),
/// BundleId:         pulumi.String("micro_1_0"),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := lightsail.NewStaticIpAttachment(ctx, "example", &lightsail.StaticIpAttachmentArgs{
/// StaticIpName: exampleStaticIp.Name,
/// InstanceName: exampleInstance.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewDistribution(ctx, "example", &lightsail.DistributionArgs{
/// Name:     pulumi.String("example-distribution"),
/// BundleId: pulumi.String("small_1_0"),
/// Origin: &lightsail.DistributionOriginArgs{
/// Name:       exampleInstance.Name,
/// RegionName: pulumi.String(available.Id),
/// },
/// DefaultCacheBehavior: &lightsail.DistributionDefaultCacheBehaviorArgs{
/// Behavior: pulumi.String("cache"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.lightsail.StaticIp;
/// import com.pulumi.aws.lightsail.StaticIpArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.StaticIpAttachment;
/// import com.pulumi.aws.lightsail.StaticIpAttachmentArgs;
/// import com.pulumi.aws.lightsail.Distribution;
/// import com.pulumi.aws.lightsail.DistributionArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .state("available")
/// .filters(GetAvailabilityZonesFilterArgs.builder()
/// .name("opt-in-status")
/// .values("opt-in-not-required")
/// .build())
/// .build());
///
/// var exampleStaticIp = new StaticIp("exampleStaticIp", StaticIpArgs.builder()
/// .name("example-static-ip")
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .name("example-instance")
/// .availabilityZone(available.names()[0])
/// .blueprintId("amazon_linux_2")
/// .bundleId("micro_1_0")
/// .build());
///
/// var example = new StaticIpAttachment("example", StaticIpAttachmentArgs.builder()
/// .staticIpName(exampleStaticIp.name())
/// .instanceName(exampleInstance.name())
/// .build());
///
/// var exampleDistribution = new Distribution("exampleDistribution", DistributionArgs.builder()
/// .name("example-distribution")
/// .bundleId("small_1_0")
/// .origin(DistributionOriginArgs.builder()
/// .name(exampleInstance.name())
/// .regionName(available.id())
/// .build())
/// .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
/// .behavior("cache")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:StaticIpAttachment
/// properties:
/// staticIpName: ${exampleStaticIp.name}
/// instanceName: ${exampleInstance.name}
/// exampleStaticIp:
/// type: aws:lightsail:StaticIp
/// name: example
/// properties:
/// name: example-static-ip
/// exampleInstance:
/// type: aws:lightsail:Instance
/// name: example
/// properties:
/// name: example-instance
/// availabilityZone: ${available.names[0]}
/// blueprintId: amazon_linux_2
/// bundleId: micro_1_0
/// exampleDistribution:
/// type: aws:lightsail:Distribution
/// name: example
/// properties:
/// name: example-distribution
/// bundleId: small_1_0
/// origin:
/// name: ${exampleInstance.name}
/// regionName: ${available.id}
/// defaultCacheBehavior:
/// behavior: cache
/// options:
/// dependsOn:
/// - ${example}
/// variables:
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// state: available
/// filters:
/// - name: opt-in-status
/// values:
/// - opt-in-not-required
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Load Balancer Origin
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
/// state: "available",
/// filters: [{
/// name: "opt-in-status",
/// values: ["opt-in-not-required"],
/// }],
/// });
/// const example = new aws.lightsail.Lb("example", {
/// name: "example-load-balancer",
/// healthCheckPath: "/",
/// instancePort: 80,
/// tags: {
/// foo: "bar",
/// },
/// });
/// const exampleInstance = new aws.lightsail.Instance("example", {
/// name: "example-instance",
/// availabilityZone: available.then(available => available.names?.[0]),
/// blueprintId: "amazon_linux_2",
/// bundleId: "nano_3_0",
/// });
/// const exampleLbAttachment = new aws.lightsail.LbAttachment("example", {
/// lbName: example.name,
/// instanceName: exampleInstance.name,
/// });
/// const exampleDistribution = new aws.lightsail.Distribution("example", {
/// name: "example-distribution",
/// bundleId: "small_1_0",
/// origin: {
/// name: example.name,
/// regionName: available.then(available => available.id),
/// },
/// defaultCacheBehavior: {
/// behavior: "cache",
/// },
/// }, {
/// dependsOn: [exampleLbAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available",
/// filters=[{
/// "name": "opt-in-status",
/// "values": ["opt-in-not-required"],
/// }])
/// example = aws.lightsail.Lb("example",
/// name="example-load-balancer",
/// health_check_path="/",
/// instance_port=80,
/// tags={
/// "foo": "bar",
/// })
/// example_instance = aws.lightsail.Instance("example",
/// name="example-instance",
/// availability_zone=available.names[0],
/// blueprint_id="amazon_linux_2",
/// bundle_id="nano_3_0")
/// example_lb_attachment = aws.lightsail.LbAttachment("example",
/// lb_name=example.name,
/// instance_name=example_instance.name)
/// example_distribution = aws.lightsail.Distribution("example",
/// name="example-distribution",
/// bundle_id="small_1_0",
/// origin={
/// "name": example.name,
/// "region_name": available.id,
/// },
/// default_cache_behavior={
/// "behavior": "cache",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_lb_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// State = "available",
/// Filters = new[]
/// {
/// new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
/// {
/// Name = "opt-in-status",
/// Values = new[]
/// {
/// "opt-in-not-required",
/// },
/// },
/// },
/// });
///
/// var example = new Aws.LightSail.Lb("example", new()
/// {
/// Name = "example-load-balancer",
/// HealthCheckPath = "/",
/// InstancePort = 80,
/// Tags =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var exampleInstance = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example-instance",
/// AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
/// BlueprintId = "amazon_linux_2",
/// BundleId = "nano_3_0",
/// });
///
/// var exampleLbAttachment = new Aws.LightSail.LbAttachment("example", new()
/// {
/// LbName = example.Name,
/// InstanceName = exampleInstance.Name,
/// });
///
/// var exampleDistribution = new Aws.LightSail.Distribution("example", new()
/// {
/// Name = "example-distribution",
/// BundleId = "small_1_0",
/// Origin = new Aws.LightSail.Inputs.DistributionOriginArgs
/// {
/// Name = example.Name,
/// RegionName = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Id),
/// },
/// DefaultCacheBehavior = new Aws.LightSail.Inputs.DistributionDefaultCacheBehaviorArgs
/// {
/// Behavior = "cache",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleLbAttachment,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// example, err := lightsail.NewLb(ctx, "example", &lightsail.LbArgs{
/// Name:            pulumi.String("example-load-balancer"),
/// HealthCheckPath: pulumi.String("/"),
/// InstancePort:    pulumi.Int(80),
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleInstance, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example-instance"),
/// AvailabilityZone: pulumi.String(available.Names[0]),
/// BlueprintId:      pulumi.String("amazon_linux_2"),
/// BundleId:         pulumi.String("nano_3_0"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLbAttachment, err := lightsail.NewLbAttachment(ctx, "example", &lightsail.LbAttachmentArgs{
/// LbName:       example.Name,
/// InstanceName: exampleInstance.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewDistribution(ctx, "example", &lightsail.DistributionArgs{
/// Name:     pulumi.String("example-distribution"),
/// BundleId: pulumi.String("small_1_0"),
/// Origin: &lightsail.DistributionOriginArgs{
/// Name:       example.Name,
/// RegionName: pulumi.String(available.Id),
/// },
/// DefaultCacheBehavior: &lightsail.DistributionDefaultCacheBehaviorArgs{
/// Behavior: pulumi.String("cache"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleLbAttachment,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.lightsail.Lb;
/// import com.pulumi.aws.lightsail.LbArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.LbAttachment;
/// import com.pulumi.aws.lightsail.LbAttachmentArgs;
/// import com.pulumi.aws.lightsail.Distribution;
/// import com.pulumi.aws.lightsail.DistributionArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.lightsail.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .state("available")
/// .filters(GetAvailabilityZonesFilterArgs.builder()
/// .name("opt-in-status")
/// .values("opt-in-not-required")
/// .build())
/// .build());
///
/// var example = new Lb("example", LbArgs.builder()
/// .name("example-load-balancer")
/// .healthCheckPath("/")
/// .instancePort(80)
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .name("example-instance")
/// .availabilityZone(available.names()[0])
/// .blueprintId("amazon_linux_2")
/// .bundleId("nano_3_0")
/// .build());
///
/// var exampleLbAttachment = new LbAttachment("exampleLbAttachment", LbAttachmentArgs.builder()
/// .lbName(example.name())
/// .instanceName(exampleInstance.name())
/// .build());
///
/// var exampleDistribution = new Distribution("exampleDistribution", DistributionArgs.builder()
/// .name("example-distribution")
/// .bundleId("small_1_0")
/// .origin(DistributionOriginArgs.builder()
/// .name(example.name())
/// .regionName(available.id())
/// .build())
/// .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
/// .behavior("cache")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleLbAttachment)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Lb
/// properties:
/// name: example-load-balancer
/// healthCheckPath: /
/// instancePort: '80'
/// tags:
/// foo: bar
/// exampleInstance:
/// type: aws:lightsail:Instance
/// name: example
/// properties:
/// name: example-instance
/// availabilityZone: ${available.names[0]}
/// blueprintId: amazon_linux_2
/// bundleId: nano_3_0
/// exampleLbAttachment:
/// type: aws:lightsail:LbAttachment
/// name: example
/// properties:
/// lbName: ${example.name}
/// instanceName: ${exampleInstance.name}
/// exampleDistribution:
/// type: aws:lightsail:Distribution
/// name: example
/// properties:
/// name: example-distribution
/// bundleId: small_1_0
/// origin:
/// name: ${example.name}
/// regionName: ${available.id}
/// defaultCacheBehavior:
/// behavior: cache
/// options:
/// dependsOn:
/// - ${exampleLbAttachment}
/// variables:
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// state: available
/// filters:
/// - name: opt-in-status
/// values:
/// - opt-in-not-required
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Distribution using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/distribution:Distribution example example-distribution
/// ```
class Distribution2 extends CustomResource {
  /// Alternate domain names of the distribution.
  late final Output<List<String>> alternativeDomainNames;

  /// ARN of the distribution.
  late final Output<String> arn;

  /// Bundle ID to use for the distribution.
  late final Output<String> bundleId;

  /// Cache behavior settings of the distribution. See below.
  late final Output<DistributionCacheBehaviorSettings?> cacheBehaviorSettings;

  /// Per-path cache behavior of the distribution. See below.
  late final Output<List<DistributionCacheBehavior>?> cacheBehaviors;

  /// Name of the SSL/TLS certificate attached to the distribution.
  late final Output<String?> certificateName;

  /// Timestamp when the distribution was created.
  late final Output<String> createdAt;

  /// Default cache behavior of the distribution. See below.
  late final Output<DistributionDefaultCacheBehavior2> defaultCacheBehavior;

  /// Domain name of the distribution.
  late final Output<String> domainName;

  /// IP address type of the distribution. Valid values: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>. Default: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  late final Output<String?> ipAddressType;

  /// Whether the distribution is enabled. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> isEnabled;

  /// Location of the distribution, such as the AWS Region and Availability Zone. See below.
  late final Output<List<DistributionLocation>> locations;

  /// Name of the distribution.
  late final Output<String> name;

  /// Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  ///
  /// The following arguments are optional:
  late final Output<DistributionOrigin2> origin;

  /// Public DNS of the origin.
  /// * `origin[0].resource_type` - Resource type of the origin resource (e.g., Instance).
  late final Output<String> originPublicDns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Lightsail resource type (e.g., Distribution).
  late final Output<String> resourceType;

  /// Status of the distribution.
  late final Output<String> status;

  /// Support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.
  late final Output<String> supportCode;

  /// Map of tags for the Lightsail Distribution. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Distribution2(
    String name, {
    DistributionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/distribution:Distribution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alternativeDomainNames =
        registerOutput<List<String>>('alternativeDomainNames');
    this.arn = registerOutput<String>('arn');
    this.bundleId = registerOutput<String>('bundleId');
    this.cacheBehaviorSettings =
        registerOutput<DistributionCacheBehaviorSettings?>(
            'cacheBehaviorSettings');
    this.cacheBehaviors =
        registerOutput<List<DistributionCacheBehavior>?>('cacheBehaviors');
    this.certificateName = registerOutput<String?>('certificateName');
    this.createdAt = registerOutput<String>('createdAt');
    this.defaultCacheBehavior =
        registerOutput<DistributionDefaultCacheBehavior2>(
            'defaultCacheBehavior');
    this.domainName = registerOutput<String>('domainName');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.locations = registerOutput<List<DistributionLocation>>('locations');
    this.name = registerOutput<String>('name');
    this.origin = registerOutput<DistributionOrigin2>('origin');
    this.originPublicDns = registerOutput<String>('originPublicDns');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
