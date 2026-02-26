import 'package:pulumi/pulumi.dart';
import 'get_attached_versions_args.dart';
import 'get_attached_versions_result.dart';

/// Provides access to available platform versions in a location for a given project.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const uswest = gcp.container.getAttachedVersions({
/// location: "us-west1",
/// project: "my-project",
/// });
/// export const firstAvailableVersion = uswest.then(uswest => uswest.validVersions?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// uswest = gcp.container.get_attached_versions(location="us-west1",
/// project="my-project")
/// pulumi.export("firstAvailableVersion", uswest.valid_versions[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var uswest = Gcp.Container.GetAttachedVersions.Invoke(new()
/// {
/// Location = "us-west1",
/// Project = "my-project",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["firstAvailableVersion"] = uswest.Apply(getAttachedVersionsResult => getAttachedVersionsResult.ValidVersions[0]),
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
/// uswest, err := container.GetAttachedVersions(ctx, &container.GetAttachedVersionsArgs{
/// Location: "us-west1",
/// Project:  "my-project",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("firstAvailableVersion", uswest.ValidVersions[0])
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
/// import com.pulumi.gcp.container.inputs.GetAttachedVersionsArgs;
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
/// final var uswest = ContainerFunctions.getAttachedVersions(GetAttachedVersionsArgs.builder()
/// .location("us-west1")
/// .project("my-project")
/// .build());
///
/// ctx.export("firstAvailableVersion", uswest.validVersions()[0]);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// uswest:
/// fn::invoke:
/// function: gcp:container:getAttachedVersions
/// arguments:
/// location: us-west1
/// project: my-project
/// outputs:
/// firstAvailableVersion: ${uswest.validVersions[0]}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAttachedVersionsResult> getAttachedVersions(
  GetAttachedVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAttachedVersions:getAttachedVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttachedVersionsResult.fromMap(result);
}
