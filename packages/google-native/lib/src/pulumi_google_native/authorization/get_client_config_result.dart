// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// Project of the current user.
  final String project;

  /// Google Cloud region
  final String region;

  /// Google Cloud zone
  final String? zone;

  GetClientConfigResult({
    required this.project,
    required this.region,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    map['region'] = region;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      project: map['project'] as String,
      region: map['region'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
