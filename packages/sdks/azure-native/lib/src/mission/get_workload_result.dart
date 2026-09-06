// ignore_for_file: unused_element, unnecessary_cast

import 'managed_on_behalf_of_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWorkload.
class GetWorkloadResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Managed On Behalf Of Configuration.
  final ManagedOnBehalfOfConfigurationResponse? managedOnBehalfOfConfiguration;
  /// The name of the resource
  final String? name;
  /// Provisioning State.
  final String? provisioningState;
  /// List of resource group ids.
  final List<String>? resourceGroupCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkloadResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managedOnBehalfOfConfiguration] Managed On Behalf Of Configuration.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning State.
  /// [resourceGroupCollection] List of resource group ids.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkloadResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.managedOnBehalfOfConfiguration,
    this.name,
    this.provisioningState,
    this.resourceGroupCollection,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'managedOnBehalfOfConfiguration': ?managedOnBehalfOfConfiguration?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGroupCollection': ?resourceGroupCollection,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetWorkloadResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedOnBehalfOfConfiguration: (() { final guardedValue = map['managedOnBehalfOfConfiguration']; if (guardedValue == null) return null; return ManagedOnBehalfOfConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupCollection: (() { final guardedValue = map['resourceGroupCollection']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
