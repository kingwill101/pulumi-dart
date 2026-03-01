// ignore_for_file: unused_element, unnecessary_cast


/// Extension sidecars to be added to the deployment.
class DeploymentExtensionSpec {
  /// Type of extension to be added.
  final String extensionType;
  /// Name of the extension.
  final String name;
  /// Protected settings for the extension.
  final dynamic protectedSettings;
  /// Settings for the extension.
  final dynamic settings;
  /// Version of the extension being used.
  final String version;

  /// Creates a new [DeploymentExtensionSpec].
  /// [extensionType] Type of extension to be added.
  /// [name] Name of the extension.
  /// [protectedSettings] Protected settings for the extension.
  /// [settings] Settings for the extension.
  /// [version] Version of the extension being used.
  DeploymentExtensionSpec({
    required this.extensionType,
    required this.name,
    this.protectedSettings,
    this.settings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionType': extensionType,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'settings': ?settings,
      'version': version,
    };
  }

  factory DeploymentExtensionSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionSpec(
      extensionType: map['extensionType'] as String,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'],
      settings: map['settings'] == null ? null : map['settings'],
      version: map['version'] as String,
    );
  }
}

