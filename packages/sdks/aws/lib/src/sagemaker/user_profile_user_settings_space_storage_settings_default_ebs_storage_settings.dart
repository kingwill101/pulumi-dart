// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  /// The default size of the EBS storage volume for a private space.
  final pulumi.Input<int> defaultEbsVolumeSizeInGb;
  /// The maximum size of the EBS storage volume for a private space.
  final pulumi.Input<int> maximumEbsVolumeSizeInGb;

  /// Creates a new [UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings].
  /// [defaultEbsVolumeSizeInGb] The default size of the EBS storage volume for a private space.
  /// [maximumEbsVolumeSizeInGb] The maximum size of the EBS storage volume for a private space.
  const UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsVolumeSizeInGb': defaultEbsVolumeSizeInGb,
      'maximumEbsVolumeSizeInGb': maximumEbsVolumeSizeInGb,
    };
  }

  factory UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings(
      defaultEbsVolumeSizeInGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['defaultEbsVolumeSizeInGb'])),
      maximumEbsVolumeSizeInGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximumEbsVolumeSizeInGb'])),
    );
  }
}
