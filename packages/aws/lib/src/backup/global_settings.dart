import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_settings_args.dart';

/// Provides an AWS Backup Global Settings resource.
///
/// > **Note:** This resource will show perpetual differences for any supported settings not explicitly configured in the `global_settings` configuration block. To avoid this, specify all supported options with their default values (typically `"false"`, but check the plan diff for the actual value). See [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide for available settings.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.backup.GlobalSettings("test", {globalSettings: {
///     isCrossAccountBackupEnabled: "true",
///     isMpaEnabled: "false",
///     isDelegatedAdministratorEnabled: "false",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.backup.GlobalSettings("test", global_settings={
///     "isCrossAccountBackupEnabled": "true",
///     "isMpaEnabled": "false",
///     "isDelegatedAdministratorEnabled": "false",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Backup.GlobalSettings("test", new()
///     {
///         GlobalSettingsList =
///         {
///             { "isCrossAccountBackupEnabled", "true" },
///             { "isMpaEnabled", "false" },
///             { "isDelegatedAdministratorEnabled", "false" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewGlobalSettings(ctx, "test", &backup.GlobalSettingsArgs{
/// 			GlobalSettings: pulumi.StringMap{
/// 				"isCrossAccountBackupEnabled":     pulumi.String("true"),
/// 				"isMpaEnabled":                    pulumi.String("false"),
/// 				"isDelegatedAdministratorEnabled": pulumi.String("false"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.backup.GlobalSettings;
/// import com.pulumi.aws.backup.GlobalSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new GlobalSettings("test", GlobalSettingsArgs.builder()
///             .globalSettings(Map.ofEntries(
///                 Map.entry("isCrossAccountBackupEnabled", "true"),
///                 Map.entry("isMpaEnabled", "false"),
///                 Map.entry("isDelegatedAdministratorEnabled", "false")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:backup:GlobalSettings
///     properties:
///       globalSettings:
///         isCrossAccountBackupEnabled: 'true'
///         isMpaEnabled: 'false'
///         isDelegatedAdministratorEnabled: 'false'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Global Settings using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/globalSettings:GlobalSettings example 123456789012
/// ```
class GlobalSettings extends pulumi.CustomResource {
  /// A list of resources along with the opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  late final pulumi.Output<Map<String, String>> globalSettings;

  /// Creates a new [GlobalSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalSettings]. {@macro pulumi_backup_global_settings_global_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalSettings(
    String name, {
    GlobalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:backup/globalSettings:GlobalSettings',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.globalSettings = registerOutput<Map<String, String>>('globalSettings');
  }
}
