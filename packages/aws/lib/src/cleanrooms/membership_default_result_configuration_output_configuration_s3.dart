// ignore_for_file: unused_element, unnecessary_cast

class MembershipDefaultResultConfigurationOutputConfigurationS3 {
  final String bucket;
  final String? keyPrefix;
  final String resultFormat;

  /// Creates a new [MembershipDefaultResultConfigurationOutputConfigurationS3].
  /// [bucket] Required.
  /// [keyPrefix] Optional.
  /// [resultFormat] Required.
  MembershipDefaultResultConfigurationOutputConfigurationS3({
    required this.bucket,
    this.keyPrefix,
    required this.resultFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    map['resultFormat'] = resultFormat;
    return map;
  }

  factory MembershipDefaultResultConfigurationOutputConfigurationS3.fromMap(
      Map<String, dynamic> map) {
    return MembershipDefaultResultConfigurationOutputConfigurationS3(
      bucket: map['bucket'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
      resultFormat: map['resultFormat'] as String,
    );
  }
}
