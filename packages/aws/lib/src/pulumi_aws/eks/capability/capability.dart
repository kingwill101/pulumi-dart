import 'package:pulumi/pulumi.dart';
import '../capability_configuration/capability_configuration.dart';
import '../capability_timeouts/capability_timeouts.dart';
import 'capability_args.dart';

/// Manages an EKS Capability for an EKS cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Capability("example", {
/// clusterName: exampleAwsEksCluster.name,
/// capabilityName: "argocd",
/// type: "ARGOCD",
/// roleArn: exampleAwsIamRole.arn,
/// deletePropagationPolicy: "RETAIN",
/// configuration: {
/// argoCd: {
/// awsIdc: {
/// idcInstanceArn: "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
/// },
/// namespace: "argocd",
/// },
/// },
/// tags: {
/// Name: "example-capability",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Capability("example",
/// cluster_name=example_aws_eks_cluster["name"],
/// capability_name="argocd",
/// type="ARGOCD",
/// role_arn=example_aws_iam_role["arn"],
/// delete_propagation_policy="RETAIN",
/// configuration={
/// "argo_cd": {
/// "aws_idc": {
/// "idc_instance_arn": "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
/// },
/// "namespace": "argocd",
/// },
/// },
/// tags={
/// "Name": "example-capability",
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
/// var example = new Aws.Eks.Capability("example", new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// CapabilityName = "argocd",
/// Type = "ARGOCD",
/// RoleArn = exampleAwsIamRole.Arn,
/// DeletePropagationPolicy = "RETAIN",
/// Configuration = new Aws.Eks.Inputs.CapabilityConfigurationArgs
/// {
/// ArgoCd = new Aws.Eks.Inputs.CapabilityConfigurationArgoCdArgs
/// {
/// AwsIdc = new Aws.Eks.Inputs.CapabilityConfigurationArgoCdAwsIdcArgs
/// {
/// IdcInstanceArn = "arn:aws:sso:::instance/ssoins-1234567890abcdef0",
/// },
/// Namespace = "argocd",
/// },
/// },
/// Tags =
/// {
/// { "Name", "example-capability" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eks.NewCapability(ctx, "example", &eks.CapabilityArgs{
/// ClusterName:             pulumi.Any(exampleAwsEksCluster.Name),
/// CapabilityName:          pulumi.String("argocd"),
/// Type:                    pulumi.String("ARGOCD"),
/// RoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// DeletePropagationPolicy: pulumi.String("RETAIN"),
/// Configuration: &eks.CapabilityConfigurationArgs{
/// ArgoCd: &eks.CapabilityConfigurationArgoCdArgs{
/// AwsIdc: &eks.CapabilityConfigurationArgoCdAwsIdcArgs{
/// IdcInstanceArn: pulumi.String("arn:aws:sso:::instance/ssoins-1234567890abcdef0"),
/// },
/// Namespace: pulumi.String("argocd"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-capability"),
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
/// import com.pulumi.aws.eks.Capability;
/// import com.pulumi.aws.eks.CapabilityArgs;
/// import com.pulumi.aws.eks.inputs.CapabilityConfigurationArgs;
/// import com.pulumi.aws.eks.inputs.CapabilityConfigurationArgoCdArgs;
/// import com.pulumi.aws.eks.inputs.CapabilityConfigurationArgoCdAwsIdcArgs;
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
/// var example = new Capability("example", CapabilityArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .capabilityName("argocd")
/// .type("ARGOCD")
/// .roleArn(exampleAwsIamRole.arn())
/// .deletePropagationPolicy("RETAIN")
/// .configuration(CapabilityConfigurationArgs.builder()
/// .argoCd(CapabilityConfigurationArgoCdArgs.builder()
/// .awsIdc(CapabilityConfigurationArgoCdAwsIdcArgs.builder()
/// .idcInstanceArn("arn:aws:sso:::instance/ssoins-1234567890abcdef0")
/// .build())
/// .namespace("argocd")
/// .build())
/// .build())
/// .tags(Map.of("Name", "example-capability"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:Capability
/// properties:
/// clusterName: ${exampleAwsEksCluster.name}
/// capabilityName: argocd
/// type: ARGOCD
/// roleArn: ${exampleAwsIamRole.arn}
/// deletePropagationPolicy: RETAIN
/// configuration:
/// argoCd:
/// awsIdc:
/// idcInstanceArn: arn:aws:sso:::instance/ssoins-1234567890abcdef0
/// namespace: argocd
/// tags:
/// Name: example-capability
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EKS Capability using the <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span> and <span pulumi-lang-nodejs="`capabilityName`" pulumi-lang-dotnet="`CapabilityName`" pulumi-lang-go="`capabilityName`" pulumi-lang-python="`capability_name`" pulumi-lang-yaml="`capabilityName`" pulumi-lang-java="`capabilityName`">`capability_name`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/capability:Capability example my-cluster,my-capability
/// ```
class Capability extends CustomResource {
  /// ARN of the capability.
  late final Output<String> arn;

  /// Name of the capability. Must be unique within the cluster.
  late final Output<String> capabilityName;

  /// Name of the EKS cluster.
  late final Output<String> clusterName;

  /// Configuration for the capability. See <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> below.
  late final Output<CapabilityConfiguration?> configuration;

  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  late final Output<String> deletePropagationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM role to associate with the capability.
  late final Output<String> roleArn;

  /// Key-value map of resource tags.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CapabilityTimeouts?> timeouts;

  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  late final Output<String> type;

  /// Version of the capability.
  late final Output<String> version;

  Capability(
    String name, {
    CapabilityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/capability:Capability',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.capabilityName = Output.createUnknown<String>();
    this.clusterName = Output.createUnknown<String>();
    this.configuration = Output.createUnknown<CapabilityConfiguration?>();
    this.deletePropagationPolicy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<CapabilityTimeouts?>();
    this.type = Output.createUnknown<String>();
    this.version = Output.createUnknown<String>();
  }
}
