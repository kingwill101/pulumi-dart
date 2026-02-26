import 'package:pulumi/pulumi.dart';
import 'get_ancestry_args.dart';
import 'get_ancestry_result.dart';

/// Retrieve the ancestors for a project.
/// See the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/getAncestry) for more details.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.projects.getAncestry({
/// project: "example-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.projects.get_ancestry(project="example-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.Projects.GetAncestry.Invoke(new()
/// {
/// Project = "example-project",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.GetAncestry(ctx, &projects.GetAncestryArgs{
/// Project: pulumi.StringRef("example-project"),
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
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetAncestryArgs;
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
/// final var example = ProjectsFunctions.getAncestry(GetAncestryArgs.builder()
/// .project("example-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:projects:getAncestry
/// arguments:
/// project: example-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAncestryResult> getAncestry(
  GetAncestryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getAncestry:getAncestry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAncestryResult.fromMap(result);
}
