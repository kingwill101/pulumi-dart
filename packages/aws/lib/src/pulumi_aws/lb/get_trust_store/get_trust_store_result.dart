// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTrustStore.
class GetTrustStoreResult {
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  GetTrustStoreResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetTrustStoreResult.fromMap(Map<String, dynamic> map) {
    return GetTrustStoreResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
