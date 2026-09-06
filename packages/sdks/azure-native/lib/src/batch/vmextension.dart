// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for virtual machine extensions.
class VMExtension {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool?>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool?>? enableAutomaticUpgrade;
  /// The name of the virtual machine extension.
  final pulumi.Input<String> name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// Collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>?>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final pulumi.Input<String> publisher;
  /// JSON formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// The type of the extensions.
  final pulumi.Input<String> type;
  /// The version of script handler.
  final pulumi.Input<String?>? typeHandlerVersion;

  /// Creates a new [VMExtension].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [name] The name of the virtual machine extension.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] JSON formatted public settings for the extension.
  /// [type] The type of the extensions.
  /// [typeHandlerVersion] The version of script handler.
  const VMExtension({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VMExtension.fromMap(Map<String, dynamic> map) {
    return VMExtension(
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      provisionAfterExtensions: (() { final guardedValue = map['provisionAfterExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
