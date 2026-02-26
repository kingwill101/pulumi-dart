import 'package:pulumi/pulumi.dart';
import 'get_engine_versions_args.dart';
import 'get_engine_versions_result.dart';

/// Provides access to available Google Kubernetes Engine versions in a zone or region for a given project.
///
/// To get more information about GKE versions, see:
/// * [The API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations/getServerConfig)
///
/// > If you are using the <span pulumi-lang-nodejs="`gcp.container.getEngineVersions`" pulumi-lang-dotnet="`gcp.container.getEngineVersions`" pulumi-lang-go="`container.getEngineVersions`" pulumi-lang-python="`container_get_engine_versions`" pulumi-lang-yaml="`gcp.container.getEngineVersions`" pulumi-lang-java="`gcp.container.getEngineVersions`">`gcp.container.getEngineVersions`</span> datasource with a
/// regional cluster, ensure that you have provided a region as the <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> to
/// the datasource. A region can have a different set of supported versions than
/// its component zones, and not all zones in a region are guaranteed to
/// support the same version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.container.getEngineVersions({
/// location: "us-central1-b",
/// versionPrefix: "1.12.",
/// });
/// const foo = new gcp.container.Cluster("foo", {
/// name: "test-cluster",
/// location: "us-central1-b",
/// nodeVersion: central1b.then(central1b => central1b.latestNodeVersion),
/// initialNodeCount: 1,
/// });
/// export const stableChannelDefaultVersion = central1b.then(central1b => central1b.releaseChannelDefaultVersion?.STABLE);
/// export const stableChannelLatestVersion = central1b.then(central1b => central1b.releaseChannelLatestVersion?.STABLE);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.container.get_engine_versions(location="us-central1-b",
/// version_prefix="1.12.")
/// foo = gcp.container.Cluster("foo",
/// name="test-cluster",
/// location="us-central1-b",
/// node_version=central1b.latest_node_version,
/// initial_node_count=1)
/// pulumi.export("stableChannelDefaultVersion", central1b.release_channel_default_version["STABLE"])
/// pulumi.export("stableChannelLatestVersion", central1b.release_channel_latest_version["STABLE"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var central1b = Gcp.Container.GetEngineVersions.Invoke(new()
/// {
/// Location = "us-central1-b",
/// VersionPrefix = "1.12.",
/// });
///
/// var foo = new Gcp.Container.Cluster("foo", new()
/// {
/// Name = "test-cluster",
/// Location = "us-central1-b",
/// NodeVersion = central1b.Apply(getEngineVersionsResult => getEngineVersionsResult.LatestNodeVersion),
/// InitialNodeCount = 1,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["stableChannelDefaultVersion"] = central1b.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelDefaultVersion?.STABLE),
/// ["stableChannelLatestVersion"] = central1b.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelLatestVersion?.STABLE),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// central1b, err := container.GetEngineVersions(ctx, &container.GetEngineVersionsArgs{
/// Location:      pulumi.StringRef("us-central1-b"),
/// VersionPrefix: pulumi.StringRef("1.12."),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = container.NewCluster(ctx, "foo", &container.ClusterArgs{
/// Name:             pulumi.String("test-cluster"),
/// Location:         pulumi.String("us-central1-b"),
/// NodeVersion:      pulumi.String(central1b.LatestNodeVersion),
/// InitialNodeCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("stableChannelDefaultVersion", central1b.ReleaseChannelDefaultVersion.STABLE)
/// ctx.Export("stableChannelLatestVersion", central1b.ReleaseChannelLatestVersion.STABLE)
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetEngineVersionsArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
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
/// final var central1b = ContainerFunctions.getEngineVersions(GetEngineVersionsArgs.builder()
/// .location("us-central1-b")
/// .versionPrefix("1.12.")
/// .build());
///
/// var foo = new Cluster("foo", ClusterArgs.builder()
/// .name("test-cluster")
/// .location("us-central1-b")
/// .nodeVersion(central1b.latestNodeVersion())
/// .initialNodeCount(1)
/// .build());
///
/// ctx.export("stableChannelDefaultVersion", central1b.releaseChannelDefaultVersion().STABLE());
/// ctx.export("stableChannelLatestVersion", central1b.releaseChannelLatestVersion().STABLE());
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: gcp:container:Cluster
/// properties:
/// name: test-cluster
/// location: us-central1-b
/// nodeVersion: ${central1b.latestNodeVersion}
/// initialNodeCount: 1
/// variables:
/// central1b:
/// fn::invoke:
/// function: gcp:container:getEngineVersions
/// arguments:
/// location: us-central1-b
/// versionPrefix: 1.12.
/// outputs:
/// stableChannelDefaultVersion: ${central1b.releaseChannelDefaultVersion.STABLE}
/// stableChannelLatestVersion: ${central1b.releaseChannelLatestVersion.STABLE}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEngineVersionsResult> getEngineVersions(
  GetEngineVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getEngineVersions:getEngineVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionsResult.fromMap(result);
}
