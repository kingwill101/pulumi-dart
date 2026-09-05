// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrustStore.
class GetTrustStoreResult {
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetTrustStoreResult].
  /// [arn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetTrustStoreResult({
    this.arn,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetTrustStoreResult.fromMap(Map<String, dynamic> map) {
    return GetTrustStoreResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
