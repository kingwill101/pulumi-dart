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

  /// Creates a new [GetAddonVersionResult].
  /// [addonName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesVersion] Required.
  /// [mostRecent] Optional.
  /// [region] Required.
  /// [version] Version of the EKS add-on.
  GetAddonVersionResult({
    required this.addonName,
    required this.id,
    required this.kubernetesVersion,
    this.mostRecent,
    required this.region,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'id': id,
      'kubernetesVersion': kubernetesVersion,
      'mostRecent': ?mostRecent,
      'region': region,
      'version': version,
    };
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
