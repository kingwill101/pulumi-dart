import 'package:pulumi/pulumi.dart';
import 'get_attached_install_manifest_args.dart';
import 'get_attached_install_manifest_result.dart';

/// Provides access to available platform versions in a location for a given project.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const manifest = gcp.container.getAttachedInstallManifest({
/// location: "us-west1",
/// project: "my-project",
/// clusterId: "test-cluster-1",
/// platformVersion: "1.25.0-gke.1",
/// });
/// export const installManifest = manifest;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// manifest = gcp.container.get_attached_install_manifest(location="us-west1",
/// project="my-project",
/// cluster_id="test-cluster-1",
/// platform_version="1.25.0-gke.1")
/// pulumi.export("installManifest", manifest)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var manifest = Gcp.Container.GetAttachedInstallManifest.Invoke(new()
/// {
/// Location = "us-west1",
/// Project = "my-project",
/// ClusterId = "test-cluster-1",
/// PlatformVersion = "1.25.0-gke.1",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["installManifest"] = manifest,
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
/// manifest, err := container.GetAttachedInstallManifest(ctx, &container.GetAttachedInstallManifestArgs{
/// Location:        "us-west1",
/// Project:         "my-project",
/// ClusterId:       "test-cluster-1",
/// PlatformVersion: "1.25.0-gke.1",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("installManifest", manifest)
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
/// import com.pulumi.gcp.container.inputs.GetAttachedInstallManifestArgs;
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
/// final var manifest = ContainerFunctions.getAttachedInstallManifest(GetAttachedInstallManifestArgs.builder()
/// .location("us-west1")
/// .project("my-project")
/// .clusterId("test-cluster-1")
/// .platformVersion("1.25.0-gke.1")
/// .build());
///
/// ctx.export("installManifest", manifest);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// manifest:
/// fn::invoke:
/// function: gcp:container:getAttachedInstallManifest
/// arguments:
/// location: us-west1
/// project: my-project
/// clusterId: test-cluster-1
/// platformVersion: 1.25.0-gke.1
/// outputs:
/// installManifest: ${manifest}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAttachedInstallManifestResult> getAttachedInstallManifest(
  GetAttachedInstallManifestArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAttachedInstallManifest:getAttachedInstallManifest',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttachedInstallManifestResult.fromMap(result);
}
