// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAddonVersion.
class GetAddonVersionResult {
  final String addonName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kubernetesVersion;
  final bool? mostRecent;
  final String region;

  /// Version of the EKS add-on.
  final String version;

  GetAddonVersionResult({
    required this.addonName,
    required this.id,
    required this.kubernetesVersion,
    this.mostRecent,
    required this.region,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addonName'] = addonName;
    map['id'] = id;
    map['kubernetesVersion'] = kubernetesVersion;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['region'] = region;
    map['version'] = version;
    return map;
  }

  factory GetAddonVersionResult.fromMap(Map<String, dynamic> map) {
    return GetAddonVersionResult(
      addonName: map['addonName'] as String,
      id: map['id'] as String,
      kubernetesVersion: map['kubernetesVersion'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] as String,
      version: map['version'] as String,
    );
  }
}
