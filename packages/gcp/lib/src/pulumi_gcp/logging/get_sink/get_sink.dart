import 'package:pulumi/pulumi.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';

/// Use this data source to get a project, folder, organization or billing account logging sink details.
/// To get more information about Service, see:
///
/// [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/sinks)
///
/// ## Example Usage
///
/// ### Retrieve Project Logging Sink Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project_sink = gcp.logging.getSink({
/// id: "projects/0123456789/sinks/my-sink-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project_sink = gcp.logging.get_sink(id="projects/0123456789/sinks/my-sink-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project_sink = Gcp.Logging.GetSink.Invoke(new()
/// {
/// Id = "projects/0123456789/sinks/my-sink-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := logging.GetSink(ctx, &logging.GetSinkArgs{
/// Id: "projects/0123456789/sinks/my-sink-name",
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
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetSinkArgs;
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
/// final var project-sink = LoggingFunctions.getSink(GetSinkArgs.builder()
/// .id("projects/0123456789/sinks/my-sink-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// project-sink:
/// fn::invoke:
/// function: gcp:logging:getSink
/// arguments:
/// id: projects/0123456789/sinks/my-sink-name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getSink:getSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}
