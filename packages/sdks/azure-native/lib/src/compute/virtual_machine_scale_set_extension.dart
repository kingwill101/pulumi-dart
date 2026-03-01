// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_reference.dart';

/// Describes a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtension {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final bool? enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// Resource name
  final String? name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final dynamic protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed from key vault
  final KeyVaultSecretReference? protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be provisioned.
  final List<String>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final String? publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  final bool? suppressFailures;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String? type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [VirtualMachineScaleSetExtension].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  /// [name] Resource name
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed from key vault
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    this.publisher,
    this.settings,
    this.suppressFailures,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?protectedSettingsFromKeyVault == null ? null : protectedSettingsFromKeyVault!.toMap(),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtension(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'],
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : KeyVaultSecretReference.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>()),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : (map['provisionAfterExtensions'] as List).cast<String>(),
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'],
      suppressFailures: map['suppressFailures'] == null ? null : map['suppressFailures'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

