// ignore_for_file: unused_element, unnecessary_cast

/// Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.
class LocationPreferenceResponse {
  /// The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  final String followGaeApplication;

  /// This is always `sql#locationPreference`.
  final String kind;

  /// The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  final String secondaryZone;

  /// The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  final String zone;

  LocationPreferenceResponse({
    required this.followGaeApplication,
    required this.kind,
    required this.secondaryZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['followGaeApplication'] = followGaeApplication;
    map['kind'] = kind;
    map['secondaryZone'] = secondaryZone;
    map['zone'] = zone;
    return map;
  }

  factory LocationPreferenceResponse.fromMap(Map<String, dynamic> map) {
    return LocationPreferenceResponse(
      followGaeApplication: map['followGaeApplication'] as String,
      kind: map['kind'] as String,
      secondaryZone: map['secondaryZone'] as String,
      zone: map['zone'] as String,
    );
  }
}
