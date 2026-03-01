// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference.dart';

/// {@template pulumi_compute_virtual_machine_scale_set_extension_args_doc}
/// The set of arguments for VirtualMachineScaleSetExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_scale_set_extension_args_doc}
class VirtualMachineScaleSetExtensionArgs {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed from key vault
  final pulumi.Input<KeyVaultSecretReference>? protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  final pulumi.Input<bool>? suppressFailures;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;
  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;
  /// The name of the VM scale set extension.
  final pulumi.Input<String>? vmssExtensionName;

  /// Creates a new [VirtualMachineScaleSetExtensionArgs].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  /// [name] Resource name
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed from key vault
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  /// [vmScaleSetName] The name of the VM scale set.
  /// [vmssExtensionName] The name of the VM scale set extension.
  VirtualMachineScaleSetExtensionArgs({
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    pulumi.Output<bool>? enableAutomaticUpgrade,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<String>? name,
    pulumi.Output<dynamic>? protectedSettings,
    pulumi.Output<KeyVaultSecretReference>? protectedSettingsFromKeyVault,
    pulumi.Output<List<String>>? provisionAfterExtensions,
    pulumi.Output<String>? publisher,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<dynamic>? settings,
    pulumi.Output<bool>? suppressFailures,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeHandlerVersion,
    required pulumi.Output<String> vmScaleSetName,
    pulumi.Output<String>? vmssExtensionName,
  }) :
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      enableAutomaticUpgrade = pulumi.Input.asOptionalInput<bool>(enableAutomaticUpgrade),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<dynamic>(protectedSettings),
      protectedSettingsFromKeyVault = pulumi.Input.asOptionalInput<KeyVaultSecretReference>(protectedSettingsFromKeyVault),
      provisionAfterExtensions = pulumi.Input.asOptionalInput<List<String>>(provisionAfterExtensions),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settings = pulumi.Input.asOptionalInput<dynamic>(settings),
      suppressFailures = pulumi.Input.asOptionalInput<bool>(suppressFailures),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName),
      vmssExtensionName = pulumi.Input.asOptionalInput<String>(vmssExtensionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReference, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'resourceGroupName': resourceGroupName,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
      'vmScaleSetName': vmScaleSetName,
      'vmssExtensionName': ?vmssExtensionName,
    };
  }

  factory VirtualMachineScaleSetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionArgs(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticUpgrade'] as bool),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<dynamic>(map['protectedSettings']),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : pulumi.Output.create<KeyVaultSecretReference>(KeyVaultSecretReference.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : pulumi.Output.create<List<String>>((map['provisionAfterExtensions'] as List).cast<String>()),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<dynamic>(map['settings']),
      suppressFailures: map['suppressFailures'] == null ? null : pulumi.Output.create<bool>(map['suppressFailures'] as bool),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
      vmScaleSetName: pulumi.Output.create<String>(map['vmScaleSetName'] as String),
      vmssExtensionName: map['vmssExtensionName'] == null ? null : pulumi.Output.create<String>(map['vmssExtensionName'] as String),
    );
  }
}

