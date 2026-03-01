// ignore_for_file: unused_element, unnecessary_cast

import 'custom_location_properties_response_authentication.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomLocation.
class GetCustomLocationResult {
  /// This is optional input that contains the authentication that should be used to generate the namespace.
  final CustomLocationPropertiesResponseAuthentication? authentication;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Contains the reference to the add-on that contains charts to deploy CRDs and operators.
  final List<String>? clusterExtensionIds;
  /// Display name for the Custom Locations location.
  final String? displayName;
  /// Connected Cluster or AKS Cluster. The Custom Locations RP will perform a checkAccess API for listAdminCredentials permissions.
  final String? hostResourceId;
  /// Type of host the Custom Locations is referencing (Kubernetes, etc...).
  final String? hostType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Kubernetes namespace that will be created on the specified cluster.
  final String? namespace;
  /// Provisioning State for the Custom Location.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCustomLocationResult].
  /// [authentication] This is optional input that contains the authentication that should be used to generate the namespace.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterExtensionIds] Contains the reference to the add-on that contains charts to deploy CRDs and operators.
  /// [displayName] Display name for the Custom Locations location.
  /// [hostResourceId] Connected Cluster or AKS Cluster. The Custom Locations RP will perform a checkAccess API for listAdminCredentials permissions.
  /// [hostType] Type of host the Custom Locations is referencing (Kubernetes, etc...).
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [namespace] Kubernetes namespace that will be created on the specified cluster.
  /// [provisioningState] Provisioning State for the Custom Location.
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCustomLocationResult({
    this.authentication,
    required this.azureApiVersion,
    this.clusterExtensionIds,
    this.displayName,
    this.hostResourceId,
    this.hostType,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.namespace,
    this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'azureApiVersion': azureApiVersion,
      'clusterExtensionIds': ?clusterExtensionIds,
      'displayName': ?displayName,
      'hostResourceId': ?hostResourceId,
      'hostType': ?hostType,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'namespace': ?namespace,
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCustomLocationResult.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationResult(
      authentication: map['authentication'] == null ? null : CustomLocationPropertiesResponseAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterExtensionIds: map['clusterExtensionIds'] == null ? null : (map['clusterExtensionIds'] as List).cast<String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      hostResourceId: map['hostResourceId'] == null ? null : map['hostResourceId'] as String,
      hostType: map['hostType'] == null ? null : map['hostType'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

