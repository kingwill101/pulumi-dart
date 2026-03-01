// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetExtension {
  /// Specifies whether or not to use the latest minor version available.
  final bool? autoUpgradeMinorVersion;
  /// Specifies the name of the extension.
  final String name;
  /// The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string.
  final String? protectedSettings;
  /// Specifies a dependency array of extensions required to be executed before, the array stores the name of each extension.
  final List<String>? provisionAfterExtensions;
  /// The publisher of the extension, available publishers can be found by using the Azure CLI.
  final String publisher;
  /// The settings passed to the extension, these are specified as a JSON object in a string.
  final String? settings;
  /// The type of extension, available types for a publisher can be found using the Azure CLI.
  final String type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final String typeHandlerVersion;

  /// Creates a new [ScaleSetExtension].
  /// [autoUpgradeMinorVersion] Specifies whether or not to use the latest minor version available.
  /// [name] Specifies the name of the extension.
  /// [protectedSettings] The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string.
  /// [provisionAfterExtensions] Specifies a dependency array of extensions required to be executed before, the array stores the name of each extension.
  /// [publisher] The publisher of the extension, available publishers can be found by using the Azure CLI.
  /// [settings] The settings passed to the extension, these are specified as a JSON object in a string.
  /// [type] The type of extension, available types for a publisher can be found using the Azure CLI.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  ScaleSetExtension({
    this.autoUpgradeMinorVersion,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory ScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return ScaleSetExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'] as String,
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : (map['provisionAfterExtensions'] as List).cast<String>(),
      publisher: map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'] as String,
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

