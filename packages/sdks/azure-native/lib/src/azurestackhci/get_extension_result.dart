// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_node_extension_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExtension.
class GetExtensionResult {
  /// Aggregate state of Arc Extensions across the nodes in this HCI cluster.
  final String? aggregateState;
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final bool? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Indicates if the extension is managed by azure or the user.
  final String? managedBy;
  /// The name of the resource
  final String? name;
  /// State of Arc Extension in each of the nodes.
  final List<PerNodeExtensionStateResponse>? perNodeExtensionDetails;
  /// Protected settings (may contain secrets).
  final dynamic protectedSettings;
  /// Provisioning state of the Extension proxy resource.
  final String? provisioningState;
  /// The name of the extension handler publisher.
  final String? publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetExtensionResult({
    this.aggregateState,
    this.autoUpgradeMinorVersion,
    this.azureApiVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    this.id,
    this.managedBy,
    this.name,
    this.perNodeExtensionDetails,
    this.protectedSettings,
    this.provisioningState,
    this.publisher,
    this.settings,
    this.systemData,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateState': ?aggregateState,
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'azureApiVersion': ?azureApiVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'id': ?id,
      'managedBy': ?managedBy,
      'name': ?name,
      'perNodeExtensionDetails': ?(() { final guardedValue = perNodeExtensionDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<PerNodeExtensionStateResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'protectedSettings': ?protectedSettings,
      'provisioningState': ?provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory GetExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionResult(
      aggregateState: (() { final guardedValue = map['aggregateState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perNodeExtensionDetails: (() { final guardedValue = map['perNodeExtensionDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PerNodeExtensionStateResponse>(guardedValue, (value) => PerNodeExtensionStateResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      protectedSettings: (() { final guardedValue = map['protectedSettings']; if (guardedValue == null) return null; return guardedValue; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return guardedValue; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
