// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_response.dart';
import 'pool_type_response.dart';
import 'resource_operational_status_response.dart';
import 'resources_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// List of resources that should have access to the pool. Typically ARM references to AKS clusters or ACI Container Groups. For local and standard this must be a single reference. For ElasticSAN there can be many.
  final List<AssignmentResponse>? assignments;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan.
  final PoolTypeResponse poolType;
  /// The status of the last operation.
  final String provisioningState;
  /// ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
  final String? reclaimPolicy;
  /// Resources represent the resources the pool should have.
  final ResourcesResponse? resources;
  /// The operational status of the resource
  final ResourceOperationalStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// List of availability zones that resources can be created in.
  final List<String>? zones;

  /// Creates a new [GetPoolResult].
  /// [assignments] List of resources that should have access to the pool. Typically ARM references to AKS clusters or ACI Container Groups. For local and standard this must be a single reference. For ElasticSAN there can be many.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [poolType] Type of the Pool: ephemeralDisk, azureDisk, or elasticsan.
  /// [provisioningState] The status of the last operation.
  /// [reclaimPolicy] ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
  /// [resources] Resources represent the resources the pool should have.
  /// [status] The operational status of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] List of availability zones that resources can be created in.
  const GetPoolResult({
    this.assignments,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.poolType,
    required this.provisioningState,
    this.reclaimPolicy,
    this.resources,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignments': ?(() { final guardedValue = assignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<AssignmentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'poolType': poolType.toMap(),
      'provisioningState': provisioningState,
      'reclaimPolicy': ?reclaimPolicy,
      'resources': ?resources?.toMap(),
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      assignments: (() { final guardedValue = map['assignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssignmentResponse>(guardedValue, (value) => AssignmentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      poolType: PoolTypeResponse.fromMap((map['poolType']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      reclaimPolicy: (() { final guardedValue = map['reclaimPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return ResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: ResourceOperationalStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

