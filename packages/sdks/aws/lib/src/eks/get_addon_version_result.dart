// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAddonVersion.
class GetAddonVersionResult {
  final String? addonName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kubernetesVersion;
  final bool? mostRecent;
  final String? region;
  /// Version of the EKS add-on.
  final String? version;

  /// Creates a new [GetAddonVersionResult].
  /// [addonName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesVersion] Optional.
  /// [mostRecent] Optional.
  /// [region] Optional.
  /// [version] Version of the EKS add-on.
  const GetAddonVersionResult({
    this.addonName,
    this.id,
    this.kubernetesVersion,
    this.mostRecent,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'id': ?id,
      'kubernetesVersion': ?kubernetesVersion,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetAddonVersionResult.fromMap(Map<String, dynamic> map) {
    return GetAddonVersionResult(
      addonName: (() { final guardedValue = map['addonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
