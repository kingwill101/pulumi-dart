// ignore_for_file: unused_element, unnecessary_cast

import 'applicable_schedule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServiceFabric.
class GetServiceFabricResult {
  /// The applicable schedule for the virtual machine.
  final ApplicableScheduleResponse applicableSchedule;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id of the environment under which the service fabric resource is present
  final String? environmentId;
  /// The backing service fabric resource's id
  final String? externalServiceFabricId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// Creates a new [GetServiceFabricResult].
  /// [applicableSchedule] The applicable schedule for the virtual machine.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [environmentId] The resource id of the environment under which the service fabric resource is present
  /// [externalServiceFabricId] The backing service fabric resource's id
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning status of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  const GetServiceFabricResult({
    required this.applicableSchedule,
    required this.azureApiVersion,
    this.environmentId,
    this.externalServiceFabricId,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicableSchedule': applicableSchedule.toMap(),
      'azureApiVersion': azureApiVersion,
      'environmentId': ?environmentId,
      'externalServiceFabricId': ?externalServiceFabricId,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetServiceFabricResult.fromMap(Map<String, dynamic> map) {
    return GetServiceFabricResult(
      applicableSchedule: ApplicableScheduleResponse.fromMap((map['applicableSchedule']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalServiceFabricId: (() { final guardedValue = map['externalServiceFabricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}
