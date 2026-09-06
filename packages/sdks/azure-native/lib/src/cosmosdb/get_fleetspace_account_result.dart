// ignore_for_file: unused_element, unnecessary_cast

import 'fleetspace_account_properties_response_global_database_account_properties.dart';
import 'system_data_response.dart';

/// Result data returned by getFleetspaceAccount.
class GetFleetspaceAccountResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration for fleetspace Account in the fleetspace.
  final FleetspaceAccountPropertiesResponseGlobalDatabaseAccountProperties? globalDatabaseAccountProperties;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// A provisioning state of the Fleetspace Account.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetFleetspaceAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [globalDatabaseAccountProperties] Configuration for fleetspace Account in the fleetspace.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] A provisioning state of the Fleetspace Account.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFleetspaceAccountResult({
    this.azureApiVersion,
    this.globalDatabaseAccountProperties,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'globalDatabaseAccountProperties': ?globalDatabaseAccountProperties?.toMap(),
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetFleetspaceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceAccountResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalDatabaseAccountProperties: (() { final guardedValue = map['globalDatabaseAccountProperties']; if (guardedValue == null) return null; return FleetspaceAccountPropertiesResponseGlobalDatabaseAccountProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
