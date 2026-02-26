import 'package:pulumi/pulumi.dart';
import 'get_project_settings_args.dart';
import 'get_project_settings_result.dart';

/// Describes the settings associated with a project.
///
/// To get more information about LoggingProjectSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Project Settings Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getProjectSettings({
/// project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_project_settings(project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var settings = Gcp.Logging.GetProjectSettings.Invoke(new()
/// {
/// Project = "my-project-name",
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
/// _, err := logging.GetProjectSettings(ctx, &logging.GetProjectSettingsArgs{
/// Project: "my-project-name",
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
/// import com.pulumi.gcp.logging.inputs.GetProjectSettingsArgs;
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
/// final var settings = LoggingFunctions.getProjectSettings(GetProjectSettingsArgs.builder()
/// .project("my-project-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// settings:
/// fn::invoke:
/// function: gcp:logging:getProjectSettings
/// arguments:
/// project: my-project-name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProjectSettingsResult> getProjectSettings(
  GetProjectSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getProjectSettings:getProjectSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectSettingsResult.fromMap(result);
}
