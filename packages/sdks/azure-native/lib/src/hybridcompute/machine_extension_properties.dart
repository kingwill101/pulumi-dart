// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_instance_view.dart';

/// Describes the properties of a Machine Extension.
class MachineExtensionProperties {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The machine extension instance view.
  final pulumi.Input<MachineExtensionInstanceView>? instanceView;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [MachineExtensionProperties].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [instanceView] The machine extension instance view.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  MachineExtensionProperties({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    this.instanceView,
    this.protectedSettings,
    this.publisher,
    this.settings,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'instanceView': ?pulumi.Input.mapOptionalInputValue<MachineExtensionInstanceView, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'protectedSettings': ?protectedSettings,
      'publisher': ?publisher,
      'settings': ?settings,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory MachineExtensionProperties.fromMap(Map<String, dynamic> map) {
    return MachineExtensionProperties(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion']! as bool).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade']! as bool).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag']! as String).input(),
      instanceView: map['instanceView'] == null ? null : (MachineExtensionInstanceView.fromMap((map['instanceView']! as Map).cast<String, dynamic>())).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']!).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      settings: map['settings'] == null ? null : (map['settings']!).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion']! as String).input(),
    );
  }
}

