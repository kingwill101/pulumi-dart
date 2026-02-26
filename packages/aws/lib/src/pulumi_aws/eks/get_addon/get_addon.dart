import 'package:pulumi/pulumi.dart';
import 'get_addon_args.dart';
import 'get_addon_result.dart';

/// Retrieve information about an EKS add-on.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getAddon({
/// addonName: "vpc-cni",
/// clusterName: exampleAwsEksCluster.name,
/// });
/// export const eksAddonOutputs = exampleAwsEksAddon;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_addon(addon_name="vpc-cni",
/// cluster_name=example_aws_eks_cluster["name"])
/// pulumi.export("eksAddonOutputs", example_aws_eks_addon)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetAddon.Invoke(new()
/// {
/// AddonName = "vpc-cni",
/// ClusterName = exampleAwsEksCluster.Name,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["eksAddonOutputs"] = exampleAwsEksAddon,
/// };
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
/// _, err := eks.LookupAddon(ctx, &eks.LookupAddonArgs{
/// AddonName:   "vpc-cni",
/// ClusterName: exampleAwsEksCluster.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("eksAddonOutputs", exampleAwsEksAddon)
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
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetAddonArgs;
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
/// final var example = EksFunctions.getAddon(GetAddonArgs.builder()
/// .addonName("vpc-cni")
/// .clusterName(exampleAwsEksCluster.name())
/// .build());
///
/// ctx.export("eksAddonOutputs", exampleAwsEksAddon);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:eks:getAddon
/// arguments:
/// addonName: vpc-cni
/// clusterName: ${exampleAwsEksCluster.name}
/// outputs:
/// eksAddonOutputs: ${exampleAwsEksAddon}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAddonResult> getAddon(
  GetAddonArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddon:getAddon',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddonResult.fromMap(result);
}
