// ignore_for_file: unused_element, unnecessary_cast

import 'environment_deployment_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The display name of the Azure Resource Manager template that produced the environment.
  final String? armTemplateDisplayName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creator of the environment.
  final String createdByUser;
  /// The deployment properties of the environment.
  final EnvironmentDeploymentPropertiesResponse? deploymentProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// The identifier of the resource group containing the environment's resources.
  final String resourceGroupId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// Creates a new [GetEnvironmentResult].
  /// [armTemplateDisplayName] The display name of the Azure Resource Manager template that produced the environment.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdByUser] The creator of the environment.
  /// [deploymentProperties] The deployment properties of the environment.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning status of the resource.
  /// [resourceGroupId] The identifier of the resource group containing the environment's resources.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  const GetEnvironmentResult({
    this.armTemplateDisplayName,
    required this.azureApiVersion,
    required this.createdByUser,
    this.deploymentProperties,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGroupId,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateDisplayName': ?armTemplateDisplayName,
      'azureApiVersion': azureApiVersion,
      'createdByUser': createdByUser,
      'deploymentProperties': ?deploymentProperties?.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGroupId': resourceGroupId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      armTemplateDisplayName: (() { final guardedValue = map['armTemplateDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdByUser: map['createdByUser'] as String,
      deploymentProperties: (() { final guardedValue = map['deploymentProperties']; if (guardedValue == null) return null; return EnvironmentDeploymentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}
