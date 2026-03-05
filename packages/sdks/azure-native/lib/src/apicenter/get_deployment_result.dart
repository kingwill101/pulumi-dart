// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_server_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeployment.
class GetDeploymentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The custom metadata defined for API catalog entities.
  final dynamic customProperties;
  /// API center-scoped definition resource ID.
  final String? definitionId;
  /// Description of the deployment.
  final String? description;
  /// API center-scoped environment resource ID.
  final String? environmentId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The deployment server
  final DeploymentServerResponse? server;
  /// State of API deployment.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// API deployment title
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeploymentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customProperties] The custom metadata defined for API catalog entities.
  /// [definitionId] API center-scoped definition resource ID.
  /// [description] Description of the deployment.
  /// [environmentId] API center-scoped environment resource ID.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [server] The deployment server
  /// [state] State of API deployment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] API deployment title
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDeploymentResult({
    required this.azureApiVersion,
    this.customProperties,
    this.definitionId,
    this.description,
    this.environmentId,
    required this.id,
    required this.name,
    this.server,
    this.state,
    required this.systemData,
    this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customProperties': ?customProperties,
      'definitionId': ?definitionId,
      'description': ?description,
      'environmentId': ?environmentId,
      'id': id,
      'name': name,
      'server': ?server?.toMap(),
      'state': ?state,
      'systemData': systemData.toMap(),
      'title': ?title,
      'type': type,
    };
  }

  factory GetDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return guardedValue; })(),
      definitionId: (() { final guardedValue = map['definitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return DeploymentServerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

