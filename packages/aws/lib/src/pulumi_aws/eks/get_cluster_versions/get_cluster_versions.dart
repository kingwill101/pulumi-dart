import 'package:pulumi/pulumi.dart';
import 'get_cluster_versions_args.dart';
import 'get_cluster_versions_result.dart';

/// Data source for managing AWS EKS (Elastic Kubernetes) Cluster Versions.
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
/// const example = aws.eks.getClusterVersions({});
/// export const eksClusterVersions = example.then(example => example.clusterVersions);
/// export const eksClusterVersionFiltered = example.then(example => .filter(version => version.clusterVersion == "1.33").map(version => (version)));
/// export const eksClusterVersionList = example.then(example => .map(version => (version.clusterVersion)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster_versions()
/// pulumi.export("eksClusterVersions", example.cluster_versions)
/// pulumi.export("eksClusterVersionFiltered", [version for version in example.cluster_versions if version.cluster_version == "1.33"])
/// pulumi.export("eksClusterVersionList", [version.cluster_version for version in example.cluster_versions])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetClusterVersions.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["eksClusterVersions"] = example.Apply(getClusterVersionsResult => getClusterVersionsResult.ClusterVersions),
/// ["eksClusterVersionFiltered"] = .Where(version => version.ClusterVersion == "1.33").Select(version =>
/// {
/// return version;
/// }).ToList(),
/// ["eksClusterVersionList"] = .Select(version =>
/// {
/// return version.ClusterVersion;
/// }).ToList(),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter by Cluster Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getClusterVersions({
/// clusterType: "eks",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster_versions(cluster_type="eks")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetClusterVersions.Invoke(new()
/// {
/// ClusterType = "eks",
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
/// _, err := eks.GetClusterVersions(ctx, &eks.GetClusterVersionsArgs{
/// ClusterType: pulumi.StringRef("eks"),
/// }, nil)
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
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterVersionsArgs;
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
/// final var example = EksFunctions.getClusterVersions(GetClusterVersionsArgs.builder()
/// .clusterType("eks")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:eks:getClusterVersions
/// arguments:
/// clusterType: eks
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter by Version Status
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getClusterVersions({
/// versionStatus: "STANDARD_SUPPORT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster_versions(version_status="STANDARD_SUPPORT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Eks.GetClusterVersions.Invoke(new()
/// {
/// VersionStatus = "STANDARD_SUPPORT",
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
/// _, err := eks.GetClusterVersions(ctx, &eks.GetClusterVersionsArgs{
/// VersionStatus: pulumi.StringRef("STANDARD_SUPPORT"),
/// }, nil)
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
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterVersionsArgs;
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
/// final var example = EksFunctions.getClusterVersions(GetClusterVersionsArgs.builder()
/// .versionStatus("STANDARD_SUPPORT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:eks:getClusterVersions
/// arguments:
/// versionStatus: STANDARD_SUPPORT
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterVersionsResult> getClusterVersions(
  GetClusterVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusterVersions:getClusterVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterVersionsResult.fromMap(result);
}
