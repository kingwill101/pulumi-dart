// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference_response.dart';

/// Describes a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtensionResponse {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// Resource Id
  final pulumi.Input<String> id;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed from key vault
  final pulumi.Input<KeyVaultSecretReferenceResponse>? protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  final pulumi.Input<bool>? suppressFailures;
  /// Resource type
  final pulumi.Input<String> type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [VirtualMachineScaleSetExtensionResponse].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  /// [id] Resource Id
  /// [name] Resource name
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed from key vault
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  /// [type] Resource type
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineScaleSetExtensionResponse({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    required this.id,
    this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    required this.provisioningState,
    this.publisher,
    this.settings,
    this.suppressFailures,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReferenceResponse, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineScaleSetExtensionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionResponse(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion'] as bool).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade'] as bool).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag'] as String).input(),
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']).input(),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : (KeyVaultSecretReferenceResponse.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())).input(),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : ((map['provisionAfterExtensions'] as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
      settings: map['settings'] == null ? null : (map['settings']).input(),
      suppressFailures: map['suppressFailures'] == null ? null : (map['suppressFailures'] as bool).input(),
      type: (map['type'] as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion'] as String).input(),
    );
  }
}

