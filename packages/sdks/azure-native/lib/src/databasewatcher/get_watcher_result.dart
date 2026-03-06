// ignore_for_file: unused_element, unnecessary_cast

import 'datastore_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWatcher.
class GetWatcherResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The data store for collected monitoring data.
  final DatastoreResponse? datastore;
  /// The resource ID of a user-assigned managed identity that will be assigned to a new alert rule.
  final String? defaultAlertRuleIdentityResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource watcher.
  final String provisioningState;
  /// The monitoring collection status of the watcher.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWatcherResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [datastore] The data store for collected monitoring data.
  /// [defaultAlertRuleIdentityResourceId] The resource ID of a user-assigned managed identity that will be assigned to a new alert rule.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource watcher.
  /// [status] The monitoring collection status of the watcher.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWatcherResult({
    required this.azureApiVersion,
    this.datastore,
    this.defaultAlertRuleIdentityResourceId,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'datastore': ?datastore?.toMap(),
      'defaultAlertRuleIdentityResourceId': ?defaultAlertRuleIdentityResourceId,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWatcherResult.fromMap(Map<String, dynamic> map) {
    return GetWatcherResult(
      azureApiVersion: map['azureApiVersion'] as String,
      datastore: (() { final guardedValue = map['datastore']; if (guardedValue == null) return null; return DatastoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultAlertRuleIdentityResourceId: (() { final guardedValue = map['defaultAlertRuleIdentityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

