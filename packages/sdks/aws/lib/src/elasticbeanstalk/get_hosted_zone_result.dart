// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHostedZone.
class GetHostedZoneResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetHostedZoneResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetHostedZoneResult({required this.id, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'region': region};
  }

  factory GetHostedZoneResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneResult(
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
