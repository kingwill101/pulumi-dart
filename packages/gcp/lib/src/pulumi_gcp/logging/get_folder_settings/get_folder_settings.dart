import 'package:pulumi/pulumi.dart';
import 'get_folder_settings_args.dart';
import 'get_folder_settings_result.dart';

/// Describes the settings associated with a folder.
///
/// To get more information about LoggingFolderSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/folders/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Folder Settings Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getFolderSettings({
/// folder: "my-folder-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_folder_settings(folder="my-folder-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var settings = Gcp.Logging.GetFolderSettings.Invoke(new()
/// {
/// Folder = "my-folder-name",
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
/// _, err := logging.LookupFolderSettings(ctx, &logging.LookupFolderSettingsArgs{
/// Folder: "my-folder-name",
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
/// import com.pulumi.gcp.logging.inputs.GetFolderSettingsArgs;
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
/// final var settings = LoggingFunctions.getFolderSettings(GetFolderSettingsArgs.builder()
/// .folder("my-folder-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// settings:
/// fn::invoke:
/// function: gcp:logging:getFolderSettings
/// arguments:
/// folder: my-folder-name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFolderSettingsResult> getFolderSettings(
  GetFolderSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getFolderSettings:getFolderSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderSettingsResult.fromMap(result);
}
