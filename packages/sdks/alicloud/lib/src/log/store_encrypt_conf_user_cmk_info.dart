// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StoreEncryptConfUserCmkInfo {
  /// Role arn.
  final pulumi.Input<String>? arn;
  /// User master key id.
  final pulumi.Input<String>? cmkKeyId;
  /// Region id where the user master key id is located.
  final pulumi.Input<String>? regionId;

  /// Creates a new [StoreEncryptConfUserCmkInfo].
  /// [arn] Role arn.
  /// [cmkKeyId] User master key id.
  /// [regionId] Region id where the user master key id is located.
  StoreEncryptConfUserCmkInfo({
    this.arn,
    this.cmkKeyId,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cmkKeyId': ?cmkKeyId,
      'regionId': ?regionId,
    };
  }

  factory StoreEncryptConfUserCmkInfo.fromMap(Map<String, dynamic> map) {
    return StoreEncryptConfUserCmkInfo(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      cmkKeyId: map['cmkKeyId'] == null ? null : (map['cmkKeyId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
    );
  }
}

