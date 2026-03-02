// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCanvasAppSettingsKendraSettings {
  /// Describes whether the document querying feature is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsKendraSettings].
  /// [status] Describes whether the document querying feature is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  UserProfileUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory UserProfileUserSettingsCanvasAppSettingsKendraSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsKendraSettings(
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

