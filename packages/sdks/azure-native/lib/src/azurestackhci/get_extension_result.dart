// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_node_extension_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExtension.
class GetExtensionResult {
  /// Aggregate state of Arc Extensions across the nodes in this HCI cluster.
  final String aggregateState;
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final bool? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Indicates if the extension is managed by azure or the user.
  final String managedBy;
  /// The name of the resource
  final String name;
  /// State of Arc Extension in each of the nodes.
  final List<PerNodeExtensionStateResponse> perNodeExtensionDetails;
  /// Protected settings (may contain secrets).
  final dynamic protectedSettings;
  /// Provisioning state of the Extension proxy resource.
  final String provisioningState;
  /// The name of the extension handler publisher.
  final String? publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the version of the script handler. Latest version would be used if not specified.
  final String? typeHandlerVersion;

  /// Creates a new [GetExtensionResult].
  /// [aggregateState] Aggregate state of Arc Extensions across the nodes in this HCI cluster.
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [managedBy] Indicates if the extension is managed by azure or the user.
  /// [name] The name of the resource
  /// [perNodeExtensionDetails] State of Arc Extension in each of the nodes.
  /// [protectedSettings] Protected settings (may contain secrets).
  /// [provisioningState] Provisioning state of the Extension proxy resource.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [typeHandlerVersion] Specifies the version of the script handler. Latest version would be used if not specified.
  GetExtensionResult({
    required this.aggregateState,
    this.autoUpgradeMinorVersion,
    required this.azureApiVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    required this.id,
    required this.managedBy,
    required this.name,
    required this.perNodeExtensionDetails,
    this.protectedSettings,
    required this.provisioningState,
    this.publisher,
    this.settings,
    required this.systemData,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateState': aggregateState,
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'azureApiVersion': azureApiVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'managedBy': managedBy,
      'name': name,
      'perNodeExtensionDetails': pulumi.Input.encodeList<PerNodeExtensionStateResponse, Map<String, dynamic>>(perNodeExtensionDetails, (value) => value.toMap()),
      'protectedSettings': ?protectedSettings,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'systemData': systemData.toMap(),
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory GetExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionResult(
      aggregateState: map['aggregateState'] as String,
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade']! as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag']! as String,
      id: map['id'] as String,
      managedBy: map['managedBy'] as String,
      name: map['name'] as String,
      perNodeExtensionDetails: pulumi.Input.decodeList<PerNodeExtensionStateResponse>(map['perNodeExtensionDetails'], (value) => PerNodeExtensionStateResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings']!,
      provisioningState: map['provisioningState'] as String,
      publisher: map['publisher'] == null ? null : map['publisher']! as String,
      settings: map['settings'] == null ? null : map['settings']!,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion']! as String,
    );
  }
}

