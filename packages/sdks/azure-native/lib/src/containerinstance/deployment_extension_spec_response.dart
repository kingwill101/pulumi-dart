// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extension sidecars to be added to the deployment.
class DeploymentExtensionSpecResponse {
  /// Type of extension to be added.
  final pulumi.Input<String> extensionType;
  /// Name of the extension.
  final pulumi.Input<String> name;
  /// Protected settings for the extension.
  final pulumi.Input<dynamic>? protectedSettings;
  /// Settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Version of the extension being used.
  final pulumi.Input<String> version;

  /// Creates a new [DeploymentExtensionSpecResponse].
  /// [extensionType] Type of extension to be added.
  /// [name] Name of the extension.
  /// [protectedSettings] Protected settings for the extension.
  /// [settings] Settings for the extension.
  /// [version] Version of the extension being used.
  DeploymentExtensionSpecResponse({
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

  factory DeploymentExtensionSpecResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionSpecResponse(
      extensionType: pulumi.Input.fromValue(map['extensionType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

