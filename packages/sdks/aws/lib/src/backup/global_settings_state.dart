// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalSettings resources.
class GlobalSettingsState {
  /// A list of resources along with the opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  final pulumi.Input<Map<String, String>>? globalSettings;

  /// Creates a new [GlobalSettingsState].
  /// [globalSettings] A list of resources along with the opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  GlobalSettingsState({
    this.globalSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalSettings': ?globalSettings,
    };
  }

  factory GlobalSettingsState.fromMap(Map<String, dynamic> map) {
    return GlobalSettingsState(
      globalSettings: map['globalSettings'] == null ? null : ((map['globalSettings'] as Map).cast<String, String>()).input(),
    );
  }
}

