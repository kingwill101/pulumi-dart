// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostedZoneId.
class GetHostedZoneIdResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetHostedZoneIdResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetHostedZoneIdResult({
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
    };
  }

  factory GetHostedZoneIdResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdResult(
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

