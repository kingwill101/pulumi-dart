import 'package:pulumi/pulumi.dart';
import '../load_balancer_access_logs/load_balancer_access_logs2.dart';
import '../load_balancer_health_check/load_balancer_health_check.dart';
import '../load_balancer_listener/load_balancer_listener.dart';
import 'load_balancer_args2.dart';

/// Provides an Elastic Load Balancer resource, also known as a "Classic
/// Load Balancer" after the release of
/// Application/Network Load Balancers.
///
/// > **NOTE on ELB Instances and ELB Attachments:** This provider currently
/// provides both a standalone ELB Attachment resource
/// (describing an instance attached to an ELB), and an ELB resource with
/// <span pulumi-lang-nodejs="`instances`" pulumi-lang-dotnet="`Instances`" pulumi-lang-go="`instances`" pulumi-lang-python="`instances`" pulumi-lang-yaml="`instances`" pulumi-lang-java="`instances`">`instances`</span> defined in-line. At this time you cannot use an ELB with in-line
/// instances in conjunction with a ELB Attachment resources. Doing so will cause a
/// conflict and will overwrite attachments.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new load balancer
/// const bar = new aws.elb.LoadBalancer("bar", {
/// name: "foobar-elb",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// accessLogs: {
/// bucket: "foo",
/// bucketPrefix: "bar",
/// interval: 60,
/// },
/// listeners: [
/// {
/// instancePort: 8000,
/// instanceProtocol: "http",
/// lbPort: 80,
/// lbProtocol: "http",
/// },
/// {
/// instancePort: 8000,
/// instanceProtocol: "http",
/// lbPort: 443,
/// lbProtocol: "https",
/// sslCertificateId: "arn:aws:iam::123456789012:server-certificate/certName",
/// },
/// ],
/// healthCheck: {
/// healthyThreshold: 2,
/// unhealthyThreshold: 2,
/// timeout: 3,
/// target: "HTTP:8000/",
/// interval: 30,
/// },
/// instances: [foo.id],
/// crossZoneLoadBalancing: true,
/// idleTimeout: 400,
/// connectionDraining: true,
/// connectionDrainingTimeout: 400,
/// tags: {
/// Name: "foobar-elb",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new load balancer
/// bar = aws.elb.LoadBalancer("bar",
/// name="foobar-elb",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// access_logs={
/// "bucket": "foo",
/// "bucket_prefix": "bar",
/// "interval": 60,
/// },
/// listeners=[
/// {
/// "instance_port": 8000,
/// "instance_protocol": "http",
/// "lb_port": 80,
/// "lb_protocol": "http",
/// },
/// {
/// "instance_port": 8000,
/// "instance_protocol": "http",
/// "lb_port": 443,
/// "lb_protocol": "https",
/// "ssl_certificate_id": "arn:aws:iam::123456789012:server-certificate/certName",
/// },
/// ],
/// health_check={
/// "healthy_threshold": 2,
/// "unhealthy_threshold": 2,
/// "timeout": 3,
/// "target": "HTTP:8000/",
/// "interval": 30,
/// },
/// instances=[foo["id"]],
/// cross_zone_load_balancing=True,
/// idle_timeout=400,
/// connection_draining=True,
/// connection_draining_timeout=400,
/// tags={
/// "Name": "foobar-elb",
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
/// // Create a new load balancer
/// var bar = new Aws.Elb.LoadBalancer("bar", new()
/// {
/// Name = "foobar-elb",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// AccessLogs = new Aws.Elb.Inputs.LoadBalancerAccessLogsArgs
/// {
/// Bucket = "foo",
/// BucketPrefix = "bar",
/// Interval = 60,
/// },
/// Listeners = new[]
/// {
/// new Aws.Elb.Inputs.LoadBalancerListenerArgs
/// {
/// InstancePort = 8000,
/// InstanceProtocol = "http",
/// LbPort = 80,
/// LbProtocol = "http",
/// },
/// new Aws.Elb.Inputs.LoadBalancerListenerArgs
/// {
/// InstancePort = 8000,
/// InstanceProtocol = "http",
/// LbPort = 443,
/// LbProtocol = "https",
/// SslCertificateId = "arn:aws:iam::123456789012:server-certificate/certName",
/// },
/// },
/// HealthCheck = new Aws.Elb.Inputs.LoadBalancerHealthCheckArgs
/// {
/// HealthyThreshold = 2,
/// UnhealthyThreshold = 2,
/// Timeout = 3,
/// Target = "HTTP:8000/",
/// Interval = 30,
/// },
/// Instances = new[]
/// {
/// foo.Id,
/// },
/// CrossZoneLoadBalancing = true,
/// IdleTimeout = 400,
/// ConnectionDraining = true,
/// ConnectionDrainingTimeout = 400,
/// Tags =
/// {
/// { "Name", "foobar-elb" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create a new load balancer
/// _, err := elb.NewLoadBalancer(ctx, "bar", &elb.LoadBalancerArgs{
/// Name: pulumi.String("foobar-elb"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// AccessLogs: &elb.LoadBalancerAccessLogsArgs{
/// Bucket:       pulumi.String("foo"),
/// BucketPrefix: pulumi.String("bar"),
/// Interval:     pulumi.Int(60),
/// },
/// Listeners: elb.LoadBalancerListenerArray{
/// &elb.LoadBalancerListenerArgs{
/// InstancePort:     pulumi.Int(8000),
/// InstanceProtocol: pulumi.String("http"),
/// LbPort:           pulumi.Int(80),
/// LbProtocol:       pulumi.String("http"),
/// },
/// &elb.LoadBalancerListenerArgs{
/// InstancePort:     pulumi.Int(8000),
/// InstanceProtocol: pulumi.String("http"),
/// LbPort:           pulumi.Int(443),
/// LbProtocol:       pulumi.String("https"),
/// SslCertificateId: pulumi.String("arn:aws:iam::123456789012:server-certificate/certName"),
/// },
/// },
/// HealthCheck: &elb.LoadBalancerHealthCheckArgs{
/// HealthyThreshold:   pulumi.Int(2),
/// UnhealthyThreshold: pulumi.Int(2),
/// Timeout:            pulumi.Int(3),
/// Target:             pulumi.String("HTTP:8000/"),
/// Interval:           pulumi.Int(30),
/// },
/// Instances: pulumi.StringArray{
/// foo.Id,
/// },
/// CrossZoneLoadBalancing:    pulumi.Bool(true),
/// IdleTimeout:               pulumi.Int(400),
/// ConnectionDraining:        pulumi.Bool(true),
/// ConnectionDrainingTimeout: pulumi.Int(400),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("foobar-elb"),
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
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerAccessLogsArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerHealthCheckArgs;
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
/// // Create a new load balancer
/// var bar = new LoadBalancer("bar", LoadBalancerArgs.builder()
/// .name("foobar-elb")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .accessLogs(LoadBalancerAccessLogsArgs.builder()
/// .bucket("foo")
/// .bucketPrefix("bar")
/// .interval(60)
/// .build())
/// .listeners(
/// LoadBalancerListenerArgs.builder()
/// .instancePort(8000)
/// .instanceProtocol("http")
/// .lbPort(80)
/// .lbProtocol("http")
/// .build(),
/// LoadBalancerListenerArgs.builder()
/// .instancePort(8000)
/// .instanceProtocol("http")
/// .lbPort(443)
/// .lbProtocol("https")
/// .sslCertificateId("arn:aws:iam::123456789012:server-certificate/certName")
/// .build())
/// .healthCheck(LoadBalancerHealthCheckArgs.builder()
/// .healthyThreshold(2)
/// .unhealthyThreshold(2)
/// .timeout(3)
/// .target("HTTP:8000/")
/// .interval(30)
/// .build())
/// .instances(foo.id())
/// .crossZoneLoadBalancing(true)
/// .idleTimeout(400)
/// .connectionDraining(true)
/// .connectionDrainingTimeout(400)
/// .tags(Map.of("Name", "foobar-elb"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a new load balancer
/// bar:
/// type: aws:elb:LoadBalancer
/// properties:
/// name: foobar-elb
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// accessLogs:
/// bucket: foo
/// bucketPrefix: bar
/// interval: 60
/// listeners:
/// - instancePort: 8000
/// instanceProtocol: http
/// lbPort: 80
/// lbProtocol: http
/// - instancePort: 8000
/// instanceProtocol: http
/// lbPort: 443
/// lbProtocol: https
/// sslCertificateId: arn:aws:iam::123456789012:server-certificate/certName
/// healthCheck:
/// healthyThreshold: 2
/// unhealthyThreshold: 2
/// timeout: 3
/// target: HTTP:8000/
/// interval: 30
/// instances:
/// - ${foo.id}
/// crossZoneLoadBalancing: true
/// idleTimeout: 400
/// connectionDraining: true
/// connectionDrainingTimeout: 400
/// tags:
/// Name: foobar-elb
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Note on ECDSA Key Algorithm
///
/// If the ARN of the <span pulumi-lang-nodejs="`sslCertificateId`" pulumi-lang-dotnet="`SslCertificateId`" pulumi-lang-go="`sslCertificateId`" pulumi-lang-python="`ssl_certificate_id`" pulumi-lang-yaml="`sslCertificateId`" pulumi-lang-java="`sslCertificateId`">`ssl_certificate_id`</span> that is pointed to references a
/// certificate that was signed by an ECDSA key, note that ELB only supports the
/// P256 and P384 curves.  Using a certificate signed by a key using a different
/// curve could produce the error `ERR_SSL_VERSION_OR_CIPHER_MISMATCH` in your
/// browser.
///
/// ## Import
///
/// Using `pulumi import`, import ELBs using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elb/loadBalancer:LoadBalancer bar elb-production-12345
/// ```
class LoadBalancer2 extends CustomResource {
  /// An Access Logs block. Access Logs documented below.
  late final Output<LoadBalancerAccessLogs2?> accessLogs;

  /// The ARN of the ELB
  late final Output<String> arn;

  /// The AZ's to serve traffic in.
  late final Output<List<String>> availabilityZones;

  /// Boolean to enable connection draining. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> connectionDraining;

  /// The time in seconds to allow for connections to drain. Default: <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>
  late final Output<int?> connectionDrainingTimeout;

  /// Enable cross-zone load balancing. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  late final Output<bool?> crossZoneLoadBalancing;

  /// Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are <span pulumi-lang-nodejs="`monitor`" pulumi-lang-dotnet="`Monitor`" pulumi-lang-go="`monitor`" pulumi-lang-python="`monitor`" pulumi-lang-yaml="`monitor`" pulumi-lang-java="`monitor`">`monitor`</span>, <span pulumi-lang-nodejs="`defensive`" pulumi-lang-dotnet="`Defensive`" pulumi-lang-go="`defensive`" pulumi-lang-python="`defensive`" pulumi-lang-yaml="`defensive`" pulumi-lang-java="`defensive`">`defensive`</span> (default), <span pulumi-lang-nodejs="`strictest`" pulumi-lang-dotnet="`Strictest`" pulumi-lang-go="`strictest`" pulumi-lang-python="`strictest`" pulumi-lang-yaml="`strictest`" pulumi-lang-java="`strictest`">`strictest`</span>.
  late final Output<String?> desyncMitigationMode;

  /// The DNS name of the ELB
  late final Output<String> dnsName;

  /// A<span pulumi-lang-nodejs=" healthCheck " pulumi-lang-dotnet=" HealthCheck " pulumi-lang-go=" healthCheck " pulumi-lang-python=" health_check " pulumi-lang-yaml=" healthCheck " pulumi-lang-java=" healthCheck "> health_check </span>block. Health Check documented below.
  late final Output<LoadBalancerHealthCheck> healthCheck;

  /// The time in seconds that the connection is allowed to be idle. Default: <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>
  late final Output<int?> idleTimeout;

  /// A list of instance ids to place in the ELB pool.
  late final Output<List<String>> instances;

  /// If true, ELB will be an internal ELB.
  late final Output<bool> internal;

  /// A list of listener blocks. Listeners documented below.
  late final Output<List<LoadBalancerListener>> listeners;

  /// The name of the ELB. By default generated by this provider.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of security group IDs to assign to the ELB.
  /// Only valid if creating an ELB within a VPC
  late final Output<List<String>> securityGroups;

  /// The name of the security group that you can use as
  /// part of your inbound rules for your load balancer's back-end application
  /// instances. Use this for Classic or Default VPC only.
  late final Output<String> sourceSecurityGroup;

  /// The ID of the security group that you can use as
  /// part of your inbound rules for your load balancer's back-end application
  /// instances. Only available on ELBs launched in a VPC.
  late final Output<String> sourceSecurityGroupId;

  /// A list of subnet IDs to attach to the ELB. When an update to subnets will remove all current subnets, this will force a new resource.
  late final Output<List<String>> subnets;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Exactly one of <span pulumi-lang-nodejs="`availabilityZones`" pulumi-lang-dotnet="`AvailabilityZones`" pulumi-lang-go="`availabilityZones`" pulumi-lang-python="`availability_zones`" pulumi-lang-yaml="`availabilityZones`" pulumi-lang-java="`availabilityZones`">`availability_zones`</span> or <span pulumi-lang-nodejs="`subnets`" pulumi-lang-dotnet="`Subnets`" pulumi-lang-go="`subnets`" pulumi-lang-python="`subnets`" pulumi-lang-yaml="`subnets`" pulumi-lang-java="`subnets`">`subnets`</span> must be specified: this
  /// determines if the ELB exists in a VPC or in EC2-classic.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)
  late final Output<String> zoneId;

  LoadBalancer2(
    String name, {
    LoadBalancerArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elb/loadBalancer:LoadBalancer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLogs = Output.createUnknown<LoadBalancerAccessLogs2?>();
    this.arn = Output.createUnknown<String>();
    this.availabilityZones = Output.createUnknown<List<String>>();
    this.connectionDraining = Output.createUnknown<bool?>();
    this.connectionDrainingTimeout = Output.createUnknown<int?>();
    this.crossZoneLoadBalancing = Output.createUnknown<bool?>();
    this.desyncMitigationMode = Output.createUnknown<String?>();
    this.dnsName = Output.createUnknown<String>();
    this.healthCheck = Output.createUnknown<LoadBalancerHealthCheck>();
    this.idleTimeout = Output.createUnknown<int?>();
    this.instances = Output.createUnknown<List<String>>();
    this.internal = Output.createUnknown<bool>();
    this.listeners = Output.createUnknown<List<LoadBalancerListener>>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.securityGroups = Output.createUnknown<List<String>>();
    this.sourceSecurityGroup = Output.createUnknown<String>();
    this.sourceSecurityGroupId = Output.createUnknown<String>();
    this.subnets = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.zoneId = Output.createUnknown<String>();
  }
}
