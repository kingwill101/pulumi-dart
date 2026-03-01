// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_reference_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_extension_instance_view_response.dart';

/// Describes a Virtual Machine Extension.
class VirtualMachineExtensionResponse {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final bool? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The virtual machine extension instance view.
  final VirtualMachineExtensionInstanceViewResponse? instanceView;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final dynamic protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed from key vault
  final KeyVaultSecretReferenceResponse? protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be provisioned.
  final List<String>? provisionAfterExtensions;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The name of the extension handler publisher.
  final String? publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  final bool? suppressFailures;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [VirtualMachineExtensionResponse].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The virtual machine extension instance view.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [protectedSettingsFromKeyVault] The extensions protected settings that are passed by reference, and consumed from key vault
  /// [provisionAfterExtensions] Collection of extension names after which this extension needs to be provisioned.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [suppressFailures] Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineExtensionResponse({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    required this.id,
    this.instanceView,
    required this.location,
    required this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.provisionAfterExtensions,
    required this.provisioningState,
    this.publisher,
    this.settings,
    this.suppressFailures,
    required this.systemData,
    this.tags,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'instanceView': ?instanceView == null ? null : instanceView!.toMap(),
      'location': location,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?protectedSettingsFromKeyVault == null ? null : protectedSettingsFromKeyVault!.toMap(),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionResponse(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      id: map['id'] as String,
      instanceView: map['instanceView'] == null ? null : VirtualMachineExtensionInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'],
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : KeyVaultSecretReferenceResponse.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>()),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : (map['provisionAfterExtensions'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'],
      suppressFailures: map['suppressFailures'] == null ? null : map['suppressFailures'] as bool,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

