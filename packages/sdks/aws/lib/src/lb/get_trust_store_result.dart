// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrustStore.
class GetTrustStoreResult {
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetTrustStoreResult].
  /// [arn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  const GetTrustStoreResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'region': region,
    };
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

