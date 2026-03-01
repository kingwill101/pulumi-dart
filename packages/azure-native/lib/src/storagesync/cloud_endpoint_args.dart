// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_cloud_endpoint_args_doc}
/// The set of arguments for CloudEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storagesync_cloud_endpoint_args_doc}
class CloudEndpointArgs {
  /// Azure file share name
  final pulumi.Input<String>? azureFileShareName;
  /// Name of Cloud Endpoint object.
  final pulumi.Input<String>? cloudEndpointName;
  /// Friendly Name
  final pulumi.Input<String>? friendlyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Storage Account Resource Id
  final pulumi.Input<String>? storageAccountResourceId;
  /// Storage Account Tenant Id
  final pulumi.Input<String>? storageAccountTenantId;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;
  /// Name of Sync Group resource.
  final pulumi.Input<String> syncGroupName;

  /// Creates a new [CloudEndpointArgs].
  /// [azureFileShareName] Azure file share name
  /// [cloudEndpointName] Name of Cloud Endpoint object.
  /// [friendlyName] Friendly Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountResourceId] Storage Account Resource Id
  /// [storageAccountTenantId] Storage Account Tenant Id
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  CloudEndpointArgs({
    String? azureFileShareName,
    String? cloudEndpointName,
    String? friendlyName,
    required String resourceGroupName,
    String? storageAccountResourceId,
    String? storageAccountTenantId,
    required String storageSyncServiceName,
    required String syncGroupName,
  }) :
      azureFileShareName = pulumi.Input.asOptionalInput<String>(azureFileShareName),
      cloudEndpointName = pulumi.Input.asOptionalInput<String>(cloudEndpointName),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountResourceId = pulumi.Input.asOptionalInput<String>(storageAccountResourceId),
      storageAccountTenantId = pulumi.Input.asOptionalInput<String>(storageAccountTenantId),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileShareName': ?azureFileShareName,
      'cloudEndpointName': ?cloudEndpointName,
      'friendlyName': ?friendlyName,
      'resourceGroupName': resourceGroupName,
      'storageAccountResourceId': ?storageAccountResourceId,
      'storageAccountTenantId': ?storageAccountTenantId,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': syncGroupName,
    };
  }

  factory CloudEndpointArgs.fromMap(Map<String, dynamic> map) {
    return CloudEndpointArgs(
      azureFileShareName: map['azureFileShareName'] == null ? null : map['azureFileShareName'] as String,
      cloudEndpointName: map['cloudEndpointName'] == null ? null : map['cloudEndpointName'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
      storageAccountTenantId: map['storageAccountTenantId'] == null ? null : map['storageAccountTenantId'] as String,
      storageSyncServiceName: map['storageSyncServiceName'] as String,
      syncGroupName: map['syncGroupName'] as String,
    );
  }
}

