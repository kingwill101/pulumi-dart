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
  GetWatcherResult({
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
      'datastore': ?datastore == null ? null : datastore!.toMap(),
      'defaultAlertRuleIdentityResourceId': ?defaultAlertRuleIdentityResourceId,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
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
      datastore: map['datastore'] == null ? null : DatastoreResponse.fromMap((map['datastore']! as Map).cast<String, dynamic>()),
      defaultAlertRuleIdentityResourceId: map['defaultAlertRuleIdentityResourceId'] == null ? null : map['defaultAlertRuleIdentityResourceId']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

