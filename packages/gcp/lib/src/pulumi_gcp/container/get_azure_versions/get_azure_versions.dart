import 'package:pulumi/pulumi.dart';
import 'get_azure_versions_args.dart';
import 'get_azure_versions_result.dart';

/// Provides access to available Kubernetes versions in a location for a given project.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.container.getAzureVersions({
/// location: "us-west1",
/// project: "my-project",
/// });
/// export const firstAvailableVersion = versions.validVersions[0];
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.container.get_azure_versions(location="us-west1",
/// project="my-project")
/// pulumi.export("firstAvailableVersion", versions["validVersions"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var central1b = Gcp.Container.GetAzureVersions.Invoke(new()
/// {
/// Location = "us-west1",
/// Project = "my-project",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["firstAvailableVersion"] = versions.ValidVersions[0],
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
/// _, err := container.GetAzureVersions(ctx, &container.GetAzureVersionsArgs{
/// Location: pulumi.StringRef("us-west1"),
/// Project:  pulumi.StringRef("my-project"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("firstAvailableVersion", versions.ValidVersions[0])
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
/// import com.pulumi.gcp.container.inputs.GetAzureVersionsArgs;
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
/// final var central1b = ContainerFunctions.getAzureVersions(GetAzureVersionsArgs.builder()
/// .location("us-west1")
/// .project("my-project")
/// .build());
///
/// ctx.export("firstAvailableVersion", versions.validVersions()[0]);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// central1b:
/// fn::invoke:
/// function: gcp:container:getAzureVersions
/// arguments:
/// location: us-west1
/// project: my-project
/// outputs:
/// firstAvailableVersion: ${versions.validVersions[0]}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAzureVersionsResult> getAzureVersions(
  GetAzureVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAzureVersions:getAzureVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAzureVersionsResult.fromMap(result);
}
