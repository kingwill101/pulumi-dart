// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_extension_instance_view_response.dart';

/// Describes a Virtual Machine Extension.
class VirtualMachineExtensionResponse {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The virtual machine extension instance view.
  final pulumi.Input<VirtualMachineExtensionInstanceViewResponse>? instanceView;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The name of the resource
  final pulumi.Input<String> name;
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
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

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
      'instanceView': ?pulumi.Input.mapOptionalInputValue<VirtualMachineExtensionInstanceViewResponse, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'location': location,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReferenceResponse, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'provisionAfterExtensions': ?provisionAfterExtensions,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'suppressFailures': ?suppressFailures,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionResponse(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion']! as bool).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade']! as bool).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag']! as String).input(),
      id: (map['id'] as String).input(),
      instanceView: map['instanceView'] == null ? null : (VirtualMachineExtensionInstanceViewResponse.fromMap((map['instanceView']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']!).input(),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : (KeyVaultSecretReferenceResponse.fromMap((map['protectedSettingsFromKeyVault']! as Map).cast<String, dynamic>())).input(),
      provisionAfterExtensions: map['provisionAfterExtensions'] == null ? null : ((map['provisionAfterExtensions']! as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      settings: map['settings'] == null ? null : (map['settings']!).input(),
      suppressFailures: map['suppressFailures'] == null ? null : (map['suppressFailures']! as bool).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion']! as String).input(),
    );
  }
}

