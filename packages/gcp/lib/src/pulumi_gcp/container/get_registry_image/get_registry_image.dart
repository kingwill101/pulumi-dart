import 'package:pulumi/pulumi.dart';
import 'get_registry_image_args.dart';
import 'get_registry_image_result.dart';

/// > **Warning**: Container Registry is deprecated. Effective March 18, 2025, Container Registry is shut down and writing images to Container Registry is unavailable. Resource will be removed in future major release.
///
/// This data source fetches the project name, and provides the appropriate URLs to use for container registry for this project.
///
/// The URLs are computed entirely offline - as long as the project exists, they will be valid, but this data source does not contact Google Container Registry (GCR) at any point.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.container.getRegistryImage({
/// name: "debian",
/// });
/// export const gcrLocation = debian.then(debian => debian.imageUrl);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.container.get_registry_image(name="debian")
/// pulumi.export("gcrLocation", debian.image_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var debian = Gcp.Container.GetRegistryImage.Invoke(new()
/// {
/// Name = "debian",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["gcrLocation"] = debian.Apply(getRegistryImageResult => getRegistryImageResult.ImageUrl),
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
/// debian, err := container.GetRegistryImage(ctx, &container.GetRegistryImageArgs{
/// Name: "debian",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("gcrLocation", debian.ImageUrl)
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
/// import com.pulumi.gcp.container.inputs.GetRegistryImageArgs;
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
/// final var debian = ContainerFunctions.getRegistryImage(GetRegistryImageArgs.builder()
/// .name("debian")
/// .build());
///
/// ctx.export("gcrLocation", debian.imageUrl());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// debian:
/// fn::invoke:
/// function: gcp:container:getRegistryImage
/// arguments:
/// name: debian
/// outputs:
/// gcrLocation: ${debian.imageUrl}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegistryImageResult> getRegistryImage(
  GetRegistryImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getRegistryImage:getRegistryImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistryImageResult.fromMap(result);
}
