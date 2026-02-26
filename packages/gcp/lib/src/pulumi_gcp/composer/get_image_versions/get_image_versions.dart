import 'package:pulumi/pulumi.dart';
import 'get_image_versions_args.dart';
import 'get_image_versions_result.dart';

/// Provides access to available Cloud Composer versions in a region for a given project.
///
/// To get more information about Composer Image Versions, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.imageVersions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/composer/docs/concepts/overview)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.composer.getImageVersions({});
/// const test = new gcp.composer.Environment("test", {
/// name: "test-env",
/// region: "us-central1",
/// config: {
/// softwareConfig: {
/// imageVersion: all.then(all => all.imageVersions?.[0]?.imageVersionId),
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.composer.get_image_versions()
/// test = gcp.composer.Environment("test",
/// name="test-env",
/// region="us-central1",
/// config={
/// "software_config": {
/// "image_version": all.image_versions[0].image_version_id,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Gcp.Composer.GetImageVersions.Invoke();
///
/// var test = new Gcp.Composer.Environment("test", new()
/// {
/// Name = "test-env",
/// Region = "us-central1",
/// Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
/// {
/// SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
/// {
/// ImageVersion = all.Apply(getImageVersionsResult => getImageVersionsResult.ImageVersions[0]?.ImageVersionId),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := composer.GetImageVersions(ctx, &composer.GetImageVersionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = composer.NewEnvironment(ctx, "test", &composer.EnvironmentArgs{
/// Name:   pulumi.String("test-env"),
/// Region: pulumi.String("us-central1"),
/// Config: &composer.EnvironmentConfigArgs{
/// SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// ImageVersion: pulumi.String(all.ImageVersions[0].ImageVersionId),
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
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetImageVersionsArgs;
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
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
/// final var all = ComposerFunctions.getImageVersions(GetImageVersionsArgs.builder()
/// .build());
///
/// var test = new Environment("test", EnvironmentArgs.builder()
/// .name("test-env")
/// .region("us-central1")
/// .config(EnvironmentConfigArgs.builder()
/// .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
/// .imageVersion(all.imageVersions()[0].imageVersionId())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: gcp:composer:Environment
/// properties:
/// name: test-env
/// region: us-central1
/// config:
/// softwareConfig:
/// imageVersion: ${all.imageVersions[0].imageVersionId}
/// variables:
/// all:
/// fn::invoke:
/// function: gcp:composer:getImageVersions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImageVersionsResult> getImageVersions(
  GetImageVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getImageVersions:getImageVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageVersionsResult.fromMap(result);
}
