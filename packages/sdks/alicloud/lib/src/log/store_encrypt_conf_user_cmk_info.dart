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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cmkKeyId: (() { final guardedValue = map['cmkKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

