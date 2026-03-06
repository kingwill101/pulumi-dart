// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  /// The default size of the EBS storage volume for a private space.
  final pulumi.Input<int> defaultEbsVolumeSizeInGb;
  /// The maximum size of the EBS storage volume for a private space.
  final pulumi.Input<int> maximumEbsVolumeSizeInGb;

  /// Creates a new [DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings].
  /// [defaultEbsVolumeSizeInGb] The default size of the EBS storage volume for a private space.
  /// [maximumEbsVolumeSizeInGb] The maximum size of the EBS storage volume for a private space.
  const DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsVolumeSizeInGb': defaultEbsVolumeSizeInGb,
      'maximumEbsVolumeSizeInGb': maximumEbsVolumeSizeInGb,
    };
  }

  factory DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings(
      defaultEbsVolumeSizeInGb: pulumi.Input.fromValue(map['defaultEbsVolumeSizeInGb'] as int),
      maximumEbsVolumeSizeInGb: pulumi.Input.fromValue(map['maximumEbsVolumeSizeInGb'] as int),
    );
  }
}

