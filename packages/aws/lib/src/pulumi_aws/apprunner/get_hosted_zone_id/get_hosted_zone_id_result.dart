// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHostedZoneId.
class GetHostedZoneIdResult {
  /// ID of the AWS App Runner service HostedZoneId in the selected Region.
  final String id;
  final String region;

  GetHostedZoneIdResult({
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetHostedZoneIdResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdResult(
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
