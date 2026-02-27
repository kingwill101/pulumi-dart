// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHostedZoneId.
class GetHostedZoneIdElbResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetHostedZoneIdElbResult({
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetHostedZoneIdElbResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdElbResult(
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
