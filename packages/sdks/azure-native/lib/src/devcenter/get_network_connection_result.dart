// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkConnection.
class GetNetworkConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// AAD Join type.
  final String domainJoinType;
  /// Active Directory domain name
  final String? domainName;
  /// The password for the account used to join domain
  final String? domainPassword;
  /// The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com.
  final String? domainUsername;
  /// Overall health status of the network connection. Health checks are run on creation, update, and periodically to validate the network connection.
  final String healthCheckStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The name for resource group where NICs will be placed.
  final String? networkingResourceGroupName;
  /// Active Directory domain Organization Unit (OU)
  final String? organizationUnit;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The subnet to attach Virtual Machines to
  final String subnetId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [domainJoinType] AAD Join type.
  /// [domainName] Active Directory domain name
  /// [domainPassword] The password for the account used to join domain
  /// [domainUsername] The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com.
  /// [healthCheckStatus] Overall health status of the network connection. Health checks are run on creation, update, and periodically to validate the network connection.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkingResourceGroupName] The name for resource group where NICs will be placed.
  /// [organizationUnit] Active Directory domain Organization Unit (OU)
  /// [provisioningState] The provisioning state of the resource.
  /// [subnetId] The subnet to attach Virtual Machines to
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNetworkConnectionResult({
    required this.azureApiVersion,
    required this.domainJoinType,
    this.domainName,
    this.domainPassword,
    this.domainUsername,
    required this.healthCheckStatus,
    required this.id,
    required this.location,
    required this.name,
    this.networkingResourceGroupName,
    this.organizationUnit,
    required this.provisioningState,
    required this.subnetId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'domainJoinType': domainJoinType,
      'domainName': ?domainName,
      'domainPassword': ?domainPassword,
      'domainUsername': ?domainUsername,
      'healthCheckStatus': healthCheckStatus,
      'id': id,
      'location': location,
      'name': name,
      'networkingResourceGroupName': ?networkingResourceGroupName,
      'organizationUnit': ?organizationUnit,
      'provisioningState': provisioningState,
      'subnetId': subnetId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      domainJoinType: map['domainJoinType'] as String,
      domainName: map['domainName'] == null ? null : map['domainName']! as String,
      domainPassword: map['domainPassword'] == null ? null : map['domainPassword']! as String,
      domainUsername: map['domainUsername'] == null ? null : map['domainUsername']! as String,
      healthCheckStatus: map['healthCheckStatus'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkingResourceGroupName: map['networkingResourceGroupName'] == null ? null : map['networkingResourceGroupName']! as String,
      organizationUnit: map['organizationUnit'] == null ? null : map['organizationUnit']! as String,
      provisioningState: map['provisioningState'] as String,
      subnetId: map['subnetId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

