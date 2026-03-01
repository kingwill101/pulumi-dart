// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference.dart';
import 'virtual_machine_extension_instance_view.dart';

/// {@template pulumi_compute_virtual_machine_scale_set_vmextension_args_doc}
/// The set of arguments for VirtualMachineScaleSetVMExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_scale_set_vmextension_args_doc}
class VirtualMachineScaleSetVMExtensionArgs {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The instance ID of the virtual machine.
  final pulumi.Input<String> instanceId;
  /// The virtual machine extension instance view.
  final pulumi.Input<VirtualMachineExtensionInstanceView>? instanceView;
  /// The location of the extension.
  final pulumi.Input<String>? location;
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
  /// The name of the virtual machine extension.
  final pulumi.Input<String>? vmExtensionName;
  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [VirtualMachineScaleSetVMExtensionArgs].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [instanceId] The instance ID of the virtual machine.
  /// [instanceView] The virtual machine extension instance view.
  /// [location] The location of the extension.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed from key vault
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  /// [vmExtensionName] The name of the virtual machine extension.
  /// [vmScaleSetName] The name of the VM scale set.
  VirtualMachineScaleSetVMExtensionArgs({
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    pulumi.Output<bool>? enableAutomaticUpgrade,
    pulumi.Output<String>? forceUpdateTag,
    required pulumi.Output<String> instanceId,
    pulumi.Output<VirtualMachineExtensionInstanceView>? instanceView,
    pulumi.Output<String>? location,
    pulumi.Output<dynamic>? protectedSettings,
    pulumi.Output<KeyVaultSecretReference>? protectedSettingsFromKeyVault,
    pulumi.Output<List<String>>? provisionAfterExtensions,
    pulumi.Output<String>? publisher,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<dynamic>? settings,
    pulumi.Output<bool>? suppressFailures,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeHandlerVersion,
    pulumi.Output<String>? vmExtensionName,
    required pulumi.Output<String> vmScaleSetName,
  }) :
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      enableAutomaticUpgrade = pulumi.Input.asOptionalInput<bool>(enableAutomaticUpgrade),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceView = pulumi.Input.asOptionalInput<VirtualMachineExtensionInstanceView>(instanceView),
      location = pulumi.Input.asOptionalInput<String>(location),
      protectedSettings = pulumi.Input.asOptionalInput<dynamic>(protectedSettings),
      protectedSettingsFromKeyVault = pulumi.Input.asOptionalInput<KeyVaultSecretReference>(protectedSettingsFromKeyVault),
      provisionAfterExtensions = pulumi.Input.asOptionalInput<List<String>>(provisionAfterExtensions),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settings = pulumi.Input.asOptionalInput<dynamic>(settings),
      suppressFailures = pulumi.Input.asOptionalInput<bool>(suppressFailures),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion),
      vmExtensionName = pulumi.Input.asOptionalInput<String>(vmExtensionName),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'instanceId': instanceId,
      'instanceView': ?pulumi.Input.mapOptionalInputValue<VirtualMachineExtensionInstanceView, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'location': ?location,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReference, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'resourceGroupName': resourceGroupName,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
      'vmExtensionName': ?vmExtensionName,
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory VirtualMachineScaleSetVMExtensionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMExtensionArgs(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticUpgrade'] as bool),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      instanceView: map['instanceView'] == null ? null : pulumi.Output.create<VirtualMachineExtensionInstanceView>(VirtualMachineExtensionInstanceView.fromMap((map['instanceView'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<dynamic>(map['protectedSettings']),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : pulumi.Output.create<KeyVaultSecretReference>(KeyVaultSecretReference.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : pulumi.Output.create<List<String>>((map['provisionAfterExtensions'] as List).cast<String>()),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<dynamic>(map['settings']),
      suppressFailures: map['suppressFailures'] == null ? null : pulumi.Output.create<bool>(map['suppressFailures'] as bool),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
      vmExtensionName: map['vmExtensionName'] == null ? null : pulumi.Output.create<String>(map['vmExtensionName'] as String),
      vmScaleSetName: pulumi.Output.create<String>(map['vmScaleSetName'] as String),
    );
  }
}

