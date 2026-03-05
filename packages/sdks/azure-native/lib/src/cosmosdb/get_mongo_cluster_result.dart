// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_spec_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMongoCluster.
class GetMongoClusterResult {
  /// The administrator's login for the mongo cluster.
  final String? administratorLogin;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A status of the mongo cluster.
  final String clusterStatus;
  /// The default mongo connection string for the cluster.
  final String connectionString;
  /// Earliest restore timestamp in UTC ISO8601 format.
  final String earliestRestoreTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The list of node group specs in the cluster.
  final List<NodeGroupSpecResponse>? nodeGroupSpecs;
  /// A provisioning state of the mongo cluster.
  final String provisioningState;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  final String? serverVersion;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMongoClusterResult].
  /// [administratorLogin] The administrator's login for the mongo cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterStatus] A status of the mongo cluster.
  /// [connectionString] The default mongo connection string for the cluster.
  /// [earliestRestoreTime] Earliest restore timestamp in UTC ISO8601 format.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [nodeGroupSpecs] The list of node group specs in the cluster.
  /// [provisioningState] A provisioning state of the mongo cluster.
  /// [serverVersion] The Mongo DB server version. Defaults to the latest available version if not specified.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetMongoClusterResult({
    this.administratorLogin,
    required this.azureApiVersion,
    required this.clusterStatus,
    required this.connectionString,
    required this.earliestRestoreTime,
    required this.id,
    required this.location,
    required this.name,
    this.nodeGroupSpecs,
    required this.provisioningState,
    this.serverVersion,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'azureApiVersion': azureApiVersion,
      'clusterStatus': clusterStatus,
      'connectionString': connectionString,
      'earliestRestoreTime': earliestRestoreTime,
      'id': id,
      'location': location,
      'name': name,
      'nodeGroupSpecs': ?(() { final guardedValue = nodeGroupSpecs; if (guardedValue == null) return null; return pulumi.Input.encodeList<NodeGroupSpecResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'serverVersion': ?serverVersion,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMongoClusterResult.fromMap(Map<String, dynamic> map) {
    return GetMongoClusterResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterStatus: map['clusterStatus'] as String,
      connectionString: map['connectionString'] as String,
      earliestRestoreTime: map['earliestRestoreTime'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nodeGroupSpecs: (() { final guardedValue = map['nodeGroupSpecs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupSpecResponse>(guardedValue, (value) => NodeGroupSpecResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

