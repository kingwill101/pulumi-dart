// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GlobalSettings.
class GlobalSettingsArgs {
  /// A list of resources along with the opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  final pulumi.Input<Map<String, String>> globalSettings;

  GlobalSettingsArgs({
    required this.globalSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalSettings'] = globalSettings;
    return map;
  }

  factory GlobalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSettingsArgs(
      globalSettings:
          pulumi.Input.asInput<Map<String, String>>(map['globalSettings']),
    );
  }
}
