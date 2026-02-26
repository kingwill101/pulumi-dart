import 'package:pulumi/pulumi.dart';
import 'get_workspace_args2.dart';
import 'get_workspace_result2.dart';

/// Provides an Amazon Managed Grafana workspace data source.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.grafana.getWorkspace({
/// workspaceId: "g-2054c75a02",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.grafana.get_workspace(workspace_id="g-2054c75a02")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Grafana.GetWorkspace.Invoke(new()
/// {
/// WorkspaceId = "g-2054c75a02",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/grafana"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := grafana.LookupWorkspace(ctx, &grafana.LookupWorkspaceArgs{
/// WorkspaceId: "g-2054c75a02",
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
/// import com.pulumi.aws.grafana.GrafanaFunctions;
/// import com.pulumi.aws.grafana.inputs.GetWorkspaceArgs;
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
/// final var example = GrafanaFunctions.getWorkspace(GetWorkspaceArgs.builder()
/// .workspaceId("g-2054c75a02")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:grafana:getWorkspace
/// arguments:
/// workspaceId: g-2054c75a02
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWorkspaceResult2> getWorkspace2(
  GetWorkspaceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:grafana/getWorkspace:getWorkspace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult2.fromMap(result);
}
