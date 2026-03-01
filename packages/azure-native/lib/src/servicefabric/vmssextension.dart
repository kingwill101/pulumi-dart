// ignore_for_file: unused_element, unnecessary_cast


/// Specifies set of extensions that should be installed onto the virtual machines.
class VMSSExtension {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final bool? enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// The name of the extension.
  final String name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final dynamic protectedSettings;
  /// Collection of extension names after which this extension needs to be provisioned.
  final List<String>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final String publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// Indicates the setup order for the extension.
  final List<String>? setupOrder;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String type;
  /// Specifies the version of the script handler.
  final String typeHandlerVersion;

  /// Creates a new [VMSSExtension].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  /// [name] The name of the extension.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [setupOrder] Indicates the setup order for the extension.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VMSSExtension({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    this.setupOrder,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'setupOrder': ?setupOrder,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory VMSSExtension.fromMap(Map<String, dynamic> map) {
    return VMSSExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'],
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : (map['provisionAfterExtensions'] as List).cast<String>(),
      publisher: map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'],
      setupOrder: map['setupOrder'] == null ? null : (map['setupOrder'] as List).cast<String>(),
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

