// ignore_for_file: unused_element, unnecessary_cast

import 'aws_cloud_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPublicCloudConnector.
class GetPublicCloudConnectorResult {
  /// Cloud profile for AWS.
  final AwsCloudProfileResponse awsCloudProfile;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Connector primary identifier.
  final String connectorPrimaryIdentifier;
  /// Host cloud the public cloud connector.
  final String hostType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The resource provisioning state.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPublicCloudConnectorResult].
  /// [awsCloudProfile] Cloud profile for AWS.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorPrimaryIdentifier] Connector primary identifier.
  /// [hostType] Host cloud the public cloud connector.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The resource provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPublicCloudConnectorResult({
    required this.awsCloudProfile,
    required this.azureApiVersion,
    required this.connectorPrimaryIdentifier,
    required this.hostType,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsCloudProfile': awsCloudProfile.toMap(),
      'azureApiVersion': azureApiVersion,
      'connectorPrimaryIdentifier': connectorPrimaryIdentifier,
      'hostType': hostType,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPublicCloudConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetPublicCloudConnectorResult(
      awsCloudProfile: AwsCloudProfileResponse.fromMap((map['awsCloudProfile']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      connectorPrimaryIdentifier: map['connectorPrimaryIdentifier'] as String,
      hostType: map['hostType'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

