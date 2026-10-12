// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalSettings resources.
class GlobalSettingsState {
  /// Resources and their opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  final pulumi.Input<Map<String, String>?>? globalSettings;

  /// Creates a new [GlobalSettingsState].
  /// [globalSettings] Resources and their opt-in preferences for the account. For a list of inputs, see [UpdateGlobalSettings](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateGlobalSettings.html) in the AWS Backup Developer Guide.
  const GlobalSettingsState({
    this.globalSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalSettings': ?globalSettings,
    };
  }

  factory GlobalSettingsState.fromMap(Map<String, dynamic> map) {
    return GlobalSettingsState(
      globalSettings: (() { final guardedValue = map['globalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
