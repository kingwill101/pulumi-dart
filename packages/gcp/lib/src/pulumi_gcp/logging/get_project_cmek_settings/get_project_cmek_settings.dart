import 'package:pulumi/pulumi.dart';
import 'get_project_cmek_settings_args.dart';
import 'get_project_cmek_settings_result.dart';

/// Describes the customer-managed encryption key (CMEK) settings associated with a project.
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects/getCmekSettings)
/// * [Enable CMEK](https://cloud.google.com/logging/docs/routing/managed-encryption-storage#enable).
///
/// ## Example Usage
///
/// ### Logging Project Cmek Settings Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cmekSettings = gcp.logging.getProjectCmekSettings({
/// project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cmek_settings = gcp.logging.get_project_cmek_settings(project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cmekSettings = Gcp.Logging.GetProjectCmekSettings.Invoke(new()
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
/// _, err := logging.GetProjectCmekSettings(ctx, &logging.GetProjectCmekSettingsArgs{
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
/// import com.pulumi.gcp.logging.inputs.GetProjectCmekSettingsArgs;
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
/// final var cmekSettings = LoggingFunctions.getProjectCmekSettings(GetProjectCmekSettingsArgs.builder()
/// .project("my-project-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// cmekSettings:
/// fn::invoke:
/// function: gcp:logging:getProjectCmekSettings
/// arguments:
/// project: my-project-name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProjectCmekSettingsResult> getProjectCmekSettings(
  GetProjectCmekSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getProjectCmekSettings:getProjectCmekSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectCmekSettingsResult.fromMap(result);
}
