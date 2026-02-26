import 'package:pulumi/pulumi.dart';
import '../resiliency_policy_policy/resiliency_policy_policy.dart';
import '../resiliency_policy_timeouts/resiliency_policy_timeouts.dart';
import 'resiliency_policy_args.dart';

/// Resource for managing an AWS Resilience Hub Resiliency Policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.ResiliencyPolicy("example", {
/// name: "testexample",
/// description: "testexample",
/// tier: "NonCritical",
/// dataLocationConstraint: "AnyLocation",
/// policy: {
/// region: {
/// rpo: "24h",
/// rto: "24h",
/// },
/// az: {
/// rpo: "24h",
/// rto: "24h",
/// },
/// hardware: {
/// rpo: "24h",
/// rto: "24h",
/// },
/// software: {
/// rpo: "24h",
/// rto: "24h",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.ResiliencyPolicy("example",
/// name="testexample",
/// description="testexample",
/// tier="NonCritical",
/// data_location_constraint="AnyLocation",
/// policy={
/// "region": {
/// "rpo": "24h",
/// "rto": "24h",
/// },
/// "az": {
/// "rpo": "24h",
/// "rto": "24h",
/// },
/// "hardware": {
/// "rpo": "24h",
/// "rto": "24h",
/// },
/// "software": {
/// "rpo": "24h",
/// "rto": "24h",
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
/// var example = new Aws.ResilienceHub.ResiliencyPolicy("example", new()
/// {
/// Name = "testexample",
/// Description = "testexample",
/// Tier = "NonCritical",
/// DataLocationConstraint = "AnyLocation",
/// Policy = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyArgs
/// {
/// Region = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyRegionArgs
/// {
/// Rpo = "24h",
/// Rto = "24h",
/// },
/// Az = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyAzArgs
/// {
/// Rpo = "24h",
/// Rto = "24h",
/// },
/// Hardware = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyHardwareArgs
/// {
/// Rpo = "24h",
/// Rto = "24h",
/// },
/// Software = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicySoftwareArgs
/// {
/// Rpo = "24h",
/// Rto = "24h",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := resiliencehub.NewResiliencyPolicy(ctx, "example", &resiliencehub.ResiliencyPolicyArgs{
/// Name:                   pulumi.String("testexample"),
/// Description:            pulumi.String("testexample"),
/// Tier:                   pulumi.String("NonCritical"),
/// DataLocationConstraint: pulumi.String("AnyLocation"),
/// Policy: &resiliencehub.ResiliencyPolicyPolicyArgs{
/// Region: &resiliencehub.ResiliencyPolicyPolicyRegionArgs{
/// Rpo: pulumi.String("24h"),
/// Rto: pulumi.String("24h"),
/// },
/// Az: &resiliencehub.ResiliencyPolicyPolicyAzArgs{
/// Rpo: pulumi.String("24h"),
/// Rto: pulumi.String("24h"),
/// },
/// Hardware: &resiliencehub.ResiliencyPolicyPolicyHardwareArgs{
/// Rpo: pulumi.String("24h"),
/// Rto: pulumi.String("24h"),
/// },
/// Software: &resiliencehub.ResiliencyPolicyPolicySoftwareArgs{
/// Rpo: pulumi.String("24h"),
/// Rto: pulumi.String("24h"),
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
/// import com.pulumi.aws.resiliencehub.ResiliencyPolicy;
/// import com.pulumi.aws.resiliencehub.ResiliencyPolicyArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyRegionArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyAzArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyHardwareArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicySoftwareArgs;
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
/// var example = new ResiliencyPolicy("example", ResiliencyPolicyArgs.builder()
/// .name("testexample")
/// .description("testexample")
/// .tier("NonCritical")
/// .dataLocationConstraint("AnyLocation")
/// .policy(ResiliencyPolicyPolicyArgs.builder()
/// .region(ResiliencyPolicyPolicyRegionArgs.builder()
/// .rpo("24h")
/// .rto("24h")
/// .build())
/// .az(ResiliencyPolicyPolicyAzArgs.builder()
/// .rpo("24h")
/// .rto("24h")
/// .build())
/// .hardware(ResiliencyPolicyPolicyHardwareArgs.builder()
/// .rpo("24h")
/// .rto("24h")
/// .build())
/// .software(ResiliencyPolicyPolicySoftwareArgs.builder()
/// .rpo("24h")
/// .rto("24h")
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
/// type: aws:resiliencehub:ResiliencyPolicy
/// properties:
/// name: testexample
/// description: testexample
/// tier: NonCritical
/// dataLocationConstraint: AnyLocation
/// policy:
/// region:
/// rpo: 24h
/// rto: 24h
/// az:
/// rpo: 24h
/// rto: 24h
/// hardware:
/// rpo: 24h
/// rto: 24h
/// software:
/// rpo: 24h
/// rto: 24h
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Resilience Hub Resiliency Policy using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/resiliencyPolicy:ResiliencyPolicy example arn:aws:resiliencehub:us-east-1:123456789012:resiliency-policy/8c1cfa29-d1dd-4421-aa68-c9f64cced4c2
/// ```
class ResiliencyPolicy extends CustomResource {
  /// ARN of the Resiliency Policy.
  late final Output<String> arn;

  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  late final Output<String> dataLocationConstraint;

  /// Description of Resiliency Policy.
  late final Output<String?> description;

  /// Estimated Cost Tier of the Resiliency Policy.
  late final Output<String> estimatedCostTier;

  /// Name of Resiliency Policy.
  /// Must be between 2 and 60 characters long.
  /// Must start with an alphanumeric character and contain alphanumeric characters, underscores, or hyphens.
  late final Output<String> name;

  /// The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>.
  ///
  /// The following arguments are optional:
  late final Output<ResiliencyPolicyPolicy?> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  late final Output<String> tier;
  late final Output<ResiliencyPolicyTimeouts?> timeouts;

  ResiliencyPolicy(
    String name, {
    ResiliencyPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/resiliencyPolicy:ResiliencyPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.dataLocationConstraint = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.estimatedCostTier = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policy = Output.createUnknown<ResiliencyPolicyPolicy?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tier = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<ResiliencyPolicyTimeouts?>();
  }
}
