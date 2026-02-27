import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_settings_args.dart';

/// Provides an AWS Backup Global Settings resource.
///
/// > **Note:** This resource will show perpetual differences for any supported settings not explicitly configured in the `global_settings` configuration block. To avoid this, specify all supported options with their default values (typically `"false"`, but check the plan diff for the actual value). See [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide for available settings.
///
/// ## Example Usage
///
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
