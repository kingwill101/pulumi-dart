// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference.dart';
import 'virtual_machine_extension_instance_view.dart';

/// {@template pulumi_compute_virtual_machine_extension_args_doc}
/// The set of arguments for VirtualMachineExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_extension_args_doc}
class VirtualMachineExtensionArgs {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool?>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool?>? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String?>? forceUpdateTag;
  /// The virtual machine extension instance view.
  final pulumi.Input<VirtualMachineExtensionInstanceView?>? instanceView;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed from key vault
  final pulumi.Input<KeyVaultSecretReference?>? protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be provisioned.
  final pulumi.Input<List<String>?>? provisionAfterExtensions;
  /// The name of the extension handler publisher.
  final pulumi.Input<String?>? publisher;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  final pulumi.Input<bool?>? suppressFailures;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String?>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String?>? typeHandlerVersion;
  /// The name of the virtual machine extension.
  final pulumi.Input<String?>? vmExtensionName;
  /// The name of the virtual machine.
  final pulumi.Input<String> vmName;

  /// Creates a new [VirtualMachineExtensionArgs].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [instanceView] The virtual machine extension instance view.
  /// [location] The geo-location where the resource lives
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed from key vault
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [publisher] The name of the extension handler publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  /// [tags] Resource tags.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  /// [vmExtensionName] The name of the virtual machine extension.
  /// [vmName] The name of the virtual machine.
  const VirtualMachineExtensionArgs({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    this.instanceView,
    this.location,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    this.publisher,
    required this.resourceGroupName,
    this.settings,
    this.suppressFailures,
    this.tags,
    this.type,
    this.typeHandlerVersion,
    this.vmExtensionName,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'instanceView': ?pulumi.Input.mapOptionalInputValue<VirtualMachineExtensionInstanceView, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'location': ?location,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReference, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'publisher': ?publisher,
      'resourceGroupName': resourceGroupName,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'tags': ?tags,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
      'vmExtensionName': ?vmExtensionName,
      'vmName': vmName,
    };
  }

  factory VirtualMachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionArgs(
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceView: (() { final guardedValue = map['instanceView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineExtensionInstanceView.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      protectedSettingsFromKeyVault: (() { final guardedValue = map['protectedSettingsFromKeyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionAfterExtensions: (() { final guardedValue = map['provisionAfterExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      suppressFailures: (() { final guardedValue = map['suppressFailures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmExtensionName: (() { final guardedValue = map['vmExtensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}
