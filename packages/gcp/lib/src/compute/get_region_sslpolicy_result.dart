// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegionSSLPolicy.
class GetRegionSSLPolicyResult {
  final String creationTimestamp;
  final List<String> customFeatures;
  final String description;
  final List<String> enabledFeatures;
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String minTlsVersion;
  final String name;
  final String profile;
  final String? project;
  final String? region;
  final String selfLink;

  /// Creates a new [GetRegionSSLPolicyResult].
  /// [creationTimestamp] Required.
  /// [customFeatures] Required.
  /// [description] Required.
  /// [enabledFeatures] Required.
  /// [fingerprint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minTlsVersion] Required.
  /// [name] Required.
  /// [profile] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Required.
  GetRegionSSLPolicyResult({
    required this.creationTimestamp,
    required this.customFeatures,
    required this.description,
    required this.enabledFeatures,
    required this.fingerprint,
    required this.id,
    required this.minTlsVersion,
    required this.name,
    required this.profile,
    this.project,
    this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['customFeatures'] = customFeatures;
    map['description'] = description;
    map['enabledFeatures'] = enabledFeatures;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['minTlsVersion'] = minTlsVersion;
    map['name'] = name;
    map['profile'] = profile;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetRegionSSLPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionSSLPolicyResult(
      creationTimestamp: map['creationTimestamp'] as String,
      customFeatures: (map['customFeatures'] as List).cast<String>(),
      description: map['description'] as String,
      enabledFeatures: (map['enabledFeatures'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      minTlsVersion: map['minTlsVersion'] as String,
      name: map['name'] as String,
      profile: map['profile'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
