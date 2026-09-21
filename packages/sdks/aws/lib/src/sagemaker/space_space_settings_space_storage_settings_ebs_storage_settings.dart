// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings {
  /// The size of an EBS storage volume for a space.
  final pulumi.Input<int> ebsVolumeSizeInGb;

  /// Creates a new [SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings].
  /// [ebsVolumeSizeInGb] The size of an EBS storage volume for a space.
  const SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings({
    required this.ebsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsVolumeSizeInGb': ebsVolumeSizeInGb,
    };
  }

  factory SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings(
      ebsVolumeSizeInGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['ebsVolumeSizeInGb'])),
    );
  }
}
