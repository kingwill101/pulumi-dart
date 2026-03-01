// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_global_settings_global_settings_args_doc}
/// The set of arguments for GlobalSettings.
/// {@endtemplate}
/// {@macro pulumi_backup_global_settings_global_settings_args_doc}
class GlobalSettingsArgs {
  /// A list of resources along with the opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  final pulumi.Input<Map<String, String>> globalSettings;

  /// Creates a new [GlobalSettingsArgs].
  /// [globalSettings] A list of resources along with the opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  GlobalSettingsArgs({required Map<String, String> globalSettings})
    : globalSettings = pulumi.Input.asInput<Map<String, String>>(
        globalSettings,
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'globalSettings': globalSettings};
  }

  factory GlobalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSettingsArgs(
      globalSettings: (map['globalSettings'] as Map).cast<String, String>(),
    );
  }
}
