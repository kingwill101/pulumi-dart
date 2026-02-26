import 'package:pulumi/pulumi.dart';
import '../continuous_deployment_policy_staging_distribution_dns_names/continuous_deployment_policy_staging_distribution_dns_names.dart';
import '../continuous_deployment_policy_traffic_config/continuous_deployment_policy_traffic_config.dart';
import 'continuous_deployment_policy_args.dart';

/// Resource for managing an AWS CloudFront Continuous Deployment Policy.
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
/// const staging = new aws.cloudfront.Distribution("staging", {
/// enabled: true,
/// staging: true,
/// });
/// const example = new aws.cloudfront.ContinuousDeploymentPolicy("example", {
/// enabled: true,
/// stagingDistributionDnsNames: {
/// items: [staging.domainName],
/// quantity: 1,
/// },
/// trafficConfig: {
/// type: "SingleWeight",
/// singleWeightConfig: {
/// weight: 0.01,
/// },
/// },
/// });
/// const production = new aws.cloudfront.Distribution("production", {
/// enabled: true,
/// continuousDeploymentPolicyId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// staging = aws.cloudfront.Distribution("staging",
/// enabled=True,
/// staging=True)
/// example = aws.cloudfront.ContinuousDeploymentPolicy("example",
/// enabled=True,
/// staging_distribution_dns_names={
/// "items": [staging.domain_name],
/// "quantity": 1,
/// },
/// traffic_config={
/// "type": "SingleWeight",
/// "single_weight_config": {
/// "weight": 0.01,
/// },
/// })
/// production = aws.cloudfront.Distribution("production",
/// enabled=True,
/// continuous_deployment_policy_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var staging = new Aws.CloudFront.Distribution("staging", new()
/// {
/// Enabled = true,
/// Staging = true,
/// });
///
/// var example = new Aws.CloudFront.ContinuousDeploymentPolicy("example", new()
/// {
/// Enabled = true,
/// StagingDistributionDnsNames = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs
/// {
/// Items = new[]
/// {
/// staging.DomainName,
/// },
/// Quantity = 1,
/// },
/// TrafficConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigArgs
/// {
/// Type = "SingleWeight",
/// SingleWeightConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs
/// {
/// Weight = 0.01,
/// },
/// },
/// });
///
/// var production = new Aws.CloudFront.Distribution("production", new()
/// {
/// Enabled = true,
/// ContinuousDeploymentPolicyId = example.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// staging, err := cloudfront.NewDistribution(ctx, "staging", &cloudfront.DistributionArgs{
/// Enabled: pulumi.Bool(true),
/// Staging: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := cloudfront.NewContinuousDeploymentPolicy(ctx, "example", &cloudfront.ContinuousDeploymentPolicyArgs{
/// Enabled: pulumi.Bool(true),
/// StagingDistributionDnsNames: &cloudfront.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs{
/// Items: pulumi.StringArray{
/// staging.DomainName,
/// },
/// Quantity: pulumi.Int(1),
/// },
/// TrafficConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigArgs{
/// Type: pulumi.String("SingleWeight"),
/// SingleWeightConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs{
/// Weight: pulumi.Float64(0.01),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudfront.NewDistribution(ctx, "production", &cloudfront.DistributionArgs{
/// Enabled:                      pulumi.Bool(true),
/// ContinuousDeploymentPolicyId: example.ID(),
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
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.ContinuousDeploymentPolicy;
/// import com.pulumi.aws.cloudfront.ContinuousDeploymentPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs;
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
/// var staging = new Distribution("staging", DistributionArgs.builder()
/// .enabled(true)
/// .staging(true)
/// .build());
///
/// var example = new ContinuousDeploymentPolicy("example", ContinuousDeploymentPolicyArgs.builder()
/// .enabled(true)
/// .stagingDistributionDnsNames(ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs.builder()
/// .items(staging.domainName())
/// .quantity(1)
/// .build())
/// .trafficConfig(ContinuousDeploymentPolicyTrafficConfigArgs.builder()
/// .type("SingleWeight")
/// .singleWeightConfig(ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs.builder()
/// .weight(0.01)
/// .build())
/// .build())
/// .build());
///
/// var production = new Distribution("production", DistributionArgs.builder()
/// .enabled(true)
/// .continuousDeploymentPolicyId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// staging:
/// type: aws:cloudfront:Distribution
/// properties:
/// enabled: true
/// staging: true # ... other configuration ...
/// example:
/// type: aws:cloudfront:ContinuousDeploymentPolicy
/// properties:
/// enabled: true
/// stagingDistributionDnsNames:
/// items:
/// - ${staging.domainName}
/// quantity: 1
/// trafficConfig:
/// type: SingleWeight
/// singleWeightConfig:
/// weight: '0.01'
/// production:
/// type: aws:cloudfront:Distribution
/// properties:
/// enabled: true # NOTE: A continuous deployment policy cannot be associated to distribution
/// #   # on creation. Set this argument once the resource exists.
/// continuousDeploymentPolicyId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Single Weight Config with Session Stickiness
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ContinuousDeploymentPolicy("example", {
/// enabled: true,
/// stagingDistributionDnsNames: {
/// items: [staging.domainName],
/// quantity: 1,
/// },
/// trafficConfig: {
/// type: "SingleWeight",
/// singleWeightConfig: {
/// weight: 0.01,
/// sessionStickinessConfig: {
/// idleTtl: 300,
/// maximumTtl: 600,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ContinuousDeploymentPolicy("example",
/// enabled=True,
/// staging_distribution_dns_names={
/// "items": [staging["domainName"]],
/// "quantity": 1,
/// },
/// traffic_config={
/// "type": "SingleWeight",
/// "single_weight_config": {
/// "weight": 0.01,
/// "session_stickiness_config": {
/// "idle_ttl": 300,
/// "maximum_ttl": 600,
/// },
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
/// var example = new Aws.CloudFront.ContinuousDeploymentPolicy("example", new()
/// {
/// Enabled = true,
/// StagingDistributionDnsNames = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs
/// {
/// Items = new[]
/// {
/// staging.DomainName,
/// },
/// Quantity = 1,
/// },
/// TrafficConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigArgs
/// {
/// Type = "SingleWeight",
/// SingleWeightConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs
/// {
/// Weight = 0.01,
/// SessionStickinessConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfigArgs
/// {
/// IdleTtl = 300,
/// MaximumTtl = 600,
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewContinuousDeploymentPolicy(ctx, "example", &cloudfront.ContinuousDeploymentPolicyArgs{
/// Enabled: pulumi.Bool(true),
/// StagingDistributionDnsNames: &cloudfront.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs{
/// Items: pulumi.StringArray{
/// staging.DomainName,
/// },
/// Quantity: pulumi.Int(1),
/// },
/// TrafficConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigArgs{
/// Type: pulumi.String("SingleWeight"),
/// SingleWeightConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs{
/// Weight: pulumi.Float64(0.01),
/// SessionStickinessConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfigArgs{
/// IdleTtl:    pulumi.Int(300),
/// MaximumTtl: pulumi.Int(600),
/// },
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
/// import com.pulumi.aws.cloudfront.ContinuousDeploymentPolicy;
/// import com.pulumi.aws.cloudfront.ContinuousDeploymentPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfigArgs;
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
/// var example = new ContinuousDeploymentPolicy("example", ContinuousDeploymentPolicyArgs.builder()
/// .enabled(true)
/// .stagingDistributionDnsNames(ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs.builder()
/// .items(staging.domainName())
/// .quantity(1)
/// .build())
/// .trafficConfig(ContinuousDeploymentPolicyTrafficConfigArgs.builder()
/// .type("SingleWeight")
/// .singleWeightConfig(ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigArgs.builder()
/// .weight(0.01)
/// .sessionStickinessConfig(ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfigArgs.builder()
/// .idleTtl(300)
/// .maximumTtl(600)
/// .build())
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
/// type: aws:cloudfront:ContinuousDeploymentPolicy
/// properties:
/// enabled: true
/// stagingDistributionDnsNames:
/// items:
/// - ${staging.domainName}
/// quantity: 1
/// trafficConfig:
/// type: SingleWeight
/// singleWeightConfig:
/// weight: '0.01'
/// sessionStickinessConfig:
/// idleTtl: 300
/// maximumTtl: 600
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Single Header Config
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ContinuousDeploymentPolicy("example", {
/// enabled: true,
/// stagingDistributionDnsNames: {
/// items: [staging.domainName],
/// quantity: 1,
/// },
/// trafficConfig: {
/// type: "SingleHeader",
/// singleHeaderConfig: {
/// header: "aws-cf-cd-example",
/// value: "example",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ContinuousDeploymentPolicy("example",
/// enabled=True,
/// staging_distribution_dns_names={
/// "items": [staging["domainName"]],
/// "quantity": 1,
/// },
/// traffic_config={
/// "type": "SingleHeader",
/// "single_header_config": {
/// "header": "aws-cf-cd-example",
/// "value": "example",
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
/// var example = new Aws.CloudFront.ContinuousDeploymentPolicy("example", new()
/// {
/// Enabled = true,
/// StagingDistributionDnsNames = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs
/// {
/// Items = new[]
/// {
/// staging.DomainName,
/// },
/// Quantity = 1,
/// },
/// TrafficConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigArgs
/// {
/// Type = "SingleHeader",
/// SingleHeaderConfig = new Aws.CloudFront.Inputs.ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfigArgs
/// {
/// Header = "aws-cf-cd-example",
/// Value = "example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewContinuousDeploymentPolicy(ctx, "example", &cloudfront.ContinuousDeploymentPolicyArgs{
/// Enabled: pulumi.Bool(true),
/// StagingDistributionDnsNames: &cloudfront.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs{
/// Items: pulumi.StringArray{
/// staging.DomainName,
/// },
/// Quantity: pulumi.Int(1),
/// },
/// TrafficConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigArgs{
/// Type: pulumi.String("SingleHeader"),
/// SingleHeaderConfig: &cloudfront.ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfigArgs{
/// Header: pulumi.String("aws-cf-cd-example"),
/// Value:  pulumi.String("example"),
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
/// import com.pulumi.aws.cloudfront.ContinuousDeploymentPolicy;
/// import com.pulumi.aws.cloudfront.ContinuousDeploymentPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfigArgs;
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
/// var example = new ContinuousDeploymentPolicy("example", ContinuousDeploymentPolicyArgs.builder()
/// .enabled(true)
/// .stagingDistributionDnsNames(ContinuousDeploymentPolicyStagingDistributionDnsNamesArgs.builder()
/// .items(staging.domainName())
/// .quantity(1)
/// .build())
/// .trafficConfig(ContinuousDeploymentPolicyTrafficConfigArgs.builder()
/// .type("SingleHeader")
/// .singleHeaderConfig(ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfigArgs.builder()
/// .header("aws-cf-cd-example")
/// .value("example")
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
/// type: aws:cloudfront:ContinuousDeploymentPolicy
/// properties:
/// enabled: true
/// stagingDistributionDnsNames:
/// items:
/// - ${staging.domainName}
/// quantity: 1
/// trafficConfig:
/// type: SingleHeader
/// singleHeaderConfig:
/// header: aws-cf-cd-example
/// value: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Continuous Deployment Policy using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/continuousDeploymentPolicy:ContinuousDeploymentPolicy example abcd-1234
/// ```
class ContinuousDeploymentPolicy extends CustomResource {
  /// The continuous deployment policy ARN.
  late final Output<String> arn;

  /// Whether this continuous deployment policy is enabled.
  late final Output<bool> enabled;

  /// Current version of the continuous distribution policy.
  late final Output<String> etag;

  /// Date and time the continuous deployment policy was last modified.
  late final Output<String> lastModifiedTime;

  /// CloudFront domain name of the staging distribution. See <span pulumi-lang-nodejs="`stagingDistributionDnsNames`" pulumi-lang-dotnet="`StagingDistributionDnsNames`" pulumi-lang-go="`stagingDistributionDnsNames`" pulumi-lang-python="`staging_distribution_dns_names`" pulumi-lang-yaml="`stagingDistributionDnsNames`" pulumi-lang-java="`stagingDistributionDnsNames`">`staging_distribution_dns_names`</span>.
  late final Output<ContinuousDeploymentPolicyStagingDistributionDnsNames>
      stagingDistributionDnsNames;

  /// Parameters for routing production traffic from primary to staging distributions. See <span pulumi-lang-nodejs="`trafficConfig`" pulumi-lang-dotnet="`TrafficConfig`" pulumi-lang-go="`trafficConfig`" pulumi-lang-python="`traffic_config`" pulumi-lang-yaml="`trafficConfig`" pulumi-lang-java="`trafficConfig`">`traffic_config`</span>.
  late final Output<ContinuousDeploymentPolicyTrafficConfig?> trafficConfig;

  ContinuousDeploymentPolicy(
    String name, {
    ContinuousDeploymentPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/continuousDeploymentPolicy:ContinuousDeploymentPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.stagingDistributionDnsNames =
        registerOutput<ContinuousDeploymentPolicyStagingDistributionDnsNames>(
            'stagingDistributionDnsNames');
    this.trafficConfig =
        registerOutput<ContinuousDeploymentPolicyTrafficConfig?>(
            'trafficConfig');
  }
}
