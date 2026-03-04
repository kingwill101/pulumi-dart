// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_administration_response.dart';
import 'rp_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFabricCapacity.
class GetFabricCapacityResult {
  /// The capacity administration
  final CapacityAdministrationResponse administration;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The current deployment state of Microsoft Fabric resource. The provisioningState is to indicate states for resource provisioning.
  final String provisioningState;

  /// The SKU details
  final RpSkuResponse sku;

  /// The current state of Microsoft Fabric resource. The state is to indicate more states outside of resource provisioning.
  final String state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFabricCapacityResult].
  /// [administration] The capacity administration
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The current deployment state of Microsoft Fabric resource. The provisioningState is to indicate states for resource provisioning.
  /// [sku] The SKU details
  /// [state] The current state of Microsoft Fabric resource. The state is to indicate more states outside of resource provisioning.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFabricCapacityResult({
    required this.administration,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.state,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration': administration.toMap(),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'state': state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFabricCapacityResult.fromMap(Map<String, dynamic> map) {
    return GetFabricCapacityResult(
      administration: CapacityAdministrationResponse.fromMap(
        (map['administration']! as Map).cast<String, dynamic>(),
      ),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: RpSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
