import 'package:pulumi/pulumi.dart';
import 'get_addon_version_args.dart';
import 'get_addon_version_result.dart';

/// Retrieve information about a specific EKS add-on version compatible with an EKS cluster version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const _default = await aws.eks.getAddonVersion({
/// addonName: "vpc-cni",
/// kubernetesVersion: example.version,
/// });
/// const latest = await aws.eks.getAddonVersion({
/// addonName: "vpc-cni",
/// kubernetesVersion: example.version,
/// mostRecent: true,
/// });
/// const vpcCni = new aws.eks.Addon("vpc_cni", {
/// clusterName: example.name,
/// addonName: "vpc-cni",
/// addonVersion: latest.version,
/// });
/// return {
/// "default": _default.version,
/// latest: latest.version,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.eks.get_addon_version(addon_name="vpc-cni",
/// kubernetes_version=example["version"])
/// latest = aws.eks.get_addon_version(addon_name="vpc-cni",
/// kubernetes_version=example["version"],
/// most_recent=True)
/// vpc_cni = aws.eks.Addon("vpc_cni",
/// cluster_name=example["name"],
/// addon_name="vpc-cni",
/// addon_version=latest.version)
/// pulumi.export("default", default.version)
/// pulumi.export("latest", latest.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Aws.Eks.GetAddonVersion.Invoke(new()
/// {
/// AddonName = "vpc-cni",
/// KubernetesVersion = example.Version,
/// });
///
/// var latest = Aws.Eks.GetAddonVersion.Invoke(new()
/// {
/// AddonName = "vpc-cni",
/// KubernetesVersion = example.Version,
/// MostRecent = true,
/// });
///
/// var vpcCni = new Aws.Eks.Addon("vpc_cni", new()
/// {
/// ClusterName = example.Name,
/// AddonName = "vpc-cni",
/// AddonVersion = latest.Apply(getAddonVersionResult => getAddonVersionResult.Version),
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["default"] = @default.Apply(@default => @default.Apply(getAddonVersionResult => getAddonVersionResult.Version)),
/// ["latest"] = latest.Apply(getAddonVersionResult => getAddonVersionResult.Version),
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
/// _default, err := eks.GetAddonVersion(ctx, &eks.GetAddonVersionArgs{
/// AddonName:         "vpc-cni",
/// KubernetesVersion: example.Version,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// latest, err := eks.GetAddonVersion(ctx, &eks.GetAddonVersionArgs{
/// AddonName:         "vpc-cni",
/// KubernetesVersion: example.Version,
/// MostRecent:        pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = eks.NewAddon(ctx, "vpc_cni", &eks.AddonArgs{
/// ClusterName:  pulumi.Any(example.Name),
/// AddonName:    pulumi.String("vpc-cni"),
/// AddonVersion: pulumi.String(latest.Version),
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("default", _default.Version)
/// ctx.Export("latest", latest.Version)
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
/// import com.pulumi.aws.eks.inputs.GetAddonVersionArgs;
/// import com.pulumi.aws.eks.Addon;
/// import com.pulumi.aws.eks.AddonArgs;
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
/// final var default = EksFunctions.getAddonVersion(GetAddonVersionArgs.builder()
/// .addonName("vpc-cni")
/// .kubernetesVersion(example.version())
/// .build());
///
/// final var latest = EksFunctions.getAddonVersion(GetAddonVersionArgs.builder()
/// .addonName("vpc-cni")
/// .kubernetesVersion(example.version())
/// .mostRecent(true)
/// .build());
///
/// var vpcCni = new Addon("vpcCni", AddonArgs.builder()
/// .clusterName(example.name())
/// .addonName("vpc-cni")
/// .addonVersion(latest.version())
/// .build());
///
/// ctx.export("default", default_.version());
/// ctx.export("latest", latest.version());
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// vpcCni:
/// type: aws:eks:Addon
/// name: vpc_cni
/// properties:
/// clusterName: ${example.name}
/// addonName: vpc-cni
/// addonVersion: ${latest.version}
/// variables:
/// default:
/// fn::invoke:
/// function: aws:eks:getAddonVersion
/// arguments:
/// addonName: vpc-cni
/// kubernetesVersion: ${example.version}
/// latest:
/// fn::invoke:
/// function: aws:eks:getAddonVersion
/// arguments:
/// addonName: vpc-cni
/// kubernetesVersion: ${example.version}
/// mostRecent: true
/// outputs:
/// default: ${default.version}
/// latest: ${latest.version}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAddonVersionResult> getAddonVersion(
  GetAddonVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddonVersion:getAddonVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddonVersionResult.fromMap(result);
}
