// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference.dart';

/// Describes the properties of a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtensionProperties {
  /// Indicates whether the extension should use a newer minor version if one is
  /// available at deployment time. Once deployed, however, the extension will not
  /// upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the
  /// platform if there is a newer version of the extension available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension
  /// handler will be forced to update even if the extension configuration has not
  /// changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The extension can contain either protectedSettings or
  /// protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed
  /// from key vault
  final pulumi.Input<KeyVaultSecretReference>? protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be
  /// provisioned.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Indicates whether failures stemming from the extension will be suppressed
  /// (Operational failures such as not connecting to the VM will not be suppressed
  /// regardless of this value). The default is false.
  final pulumi.Input<bool>? suppressFailures;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [VirtualMachineScaleSetExtensionProperties].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the
  /// [forceUpdateTag] If a value is provided and is different from the previous value, the extension
  /// [protectedSettings] The extension can contain either protectedSettings or
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineScaleSetExtensionProperties({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
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
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReference, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineScaleSetExtensionProperties.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionProperties(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion']! as bool).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade']! as bool).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag']! as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']!).input(),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : (KeyVaultSecretReference.fromMap((map['protectedSettingsFromKeyVault']! as Map).cast<String, dynamic>())).input(),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : ((map['provisionAfterExtensions']! as List).cast<String>()).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      settings: map['settings'] == null ? null : (map['settings']!).input(),
      suppressFailures: map['suppressFailures'] == null ? null : (map['suppressFailures']! as bool).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion']! as String).input(),
    );
  }
}

