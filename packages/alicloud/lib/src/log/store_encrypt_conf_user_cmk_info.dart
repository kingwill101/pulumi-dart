// ignore_for_file: unused_element, unnecessary_cast


class StoreEncryptConfUserCmkInfo {
  /// Role arn.
  final String? arn;
  /// User master key id.
  final String? cmkKeyId;
  /// Region id where the user master key id is located.
  final String? regionId;

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
      arn: map['arn'] == null ? null : map['arn'] as String,
      cmkKeyId: map['cmkKeyId'] == null ? null : map['cmkKeyId'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
    );
  }
}

