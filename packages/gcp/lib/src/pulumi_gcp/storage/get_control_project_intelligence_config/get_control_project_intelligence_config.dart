import 'package:pulumi/pulumi.dart';
import 'get_control_project_intelligence_config_args.dart';
import 'get_control_project_intelligence_config_result.dart';

/// Use this data source to get information about a Project Storage Intelligence config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/storage-intelligence/overview#resource)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/intelligenceConfig).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample_config = gcp.storage.getControlProjectIntelligenceConfig({
/// name: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample_config = gcp.storage.get_control_project_intelligence_config(name="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sample_config = Gcp.Storage.GetControlProjectIntelligenceConfig.Invoke(new()
/// {
/// Name = "my-project",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.LookupControlProjectIntelligenceConfig(ctx, &storage.LookupControlProjectIntelligenceConfigArgs{
/// Name: "my-project",
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlProjectIntelligenceConfigArgs;
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
/// final var sample-config = StorageFunctions.getControlProjectIntelligenceConfig(GetControlProjectIntelligenceConfigArgs.builder()
/// .name("my-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sample-config:
/// fn::invoke:
/// function: gcp:storage:getControlProjectIntelligenceConfig
/// arguments:
/// name: my-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetControlProjectIntelligenceConfigResult>
    getControlProjectIntelligenceConfig(
  GetControlProjectIntelligenceConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlProjectIntelligenceConfig:getControlProjectIntelligenceConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlProjectIntelligenceConfigResult.fromMap(result);
}
