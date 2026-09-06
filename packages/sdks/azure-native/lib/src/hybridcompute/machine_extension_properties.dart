// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_instance_view.dart';

/// Describes the properties of a Machine Extension.
class MachineExtensionProperties {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool?>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final pulumi.Input<bool?>? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String?>? forceUpdateTag;
  /// The machine extension instance view.
  final pulumi.Input<MachineExtensionInstanceView?>? instanceView;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The name of the extension handler publisher.
  final pulumi.Input<String?>? publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String?>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String?>? typeHandlerVersion;

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
  const MachineExtensionProperties({
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
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceView: (() { final guardedValue = map['instanceView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineExtensionInstanceView.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
