// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultKmsKey.
class GetDefaultKmsKeyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the default KMS key uses to encrypt an EBS volume in this region when no key is specified in an API call that creates the volume and encryption by default is enabled.
  final String keyArn;
  final String region;

  GetDefaultKmsKeyResult({
    required this.id,
    required this.keyArn,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['keyArn'] = keyArn;
    map['region'] = region;
    return map;
  }

  factory GetDefaultKmsKeyResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultKmsKeyResult(
      id: map['id'] as String,
      keyArn: map['keyArn'] as String,
      region: map['region'] as String,
    );
  }
}
