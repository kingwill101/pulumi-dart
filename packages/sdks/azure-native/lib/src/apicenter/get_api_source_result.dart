// ignore_for_file: unused_element, unnecessary_cast

import 'azure_api_management_source_response.dart';
import 'link_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApiSource.
class GetApiSourceResult {
  /// API source configuration for Azure API Management.
  final AzureApiManagementSourceResponse? azureApiManagementSource;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Indicates if the specification should be imported along with metadata.
  final String? importSpecification;
  /// The state of the API source link
  final LinkStateResponse linkState;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The target environment resource ID.
  final String? targetEnvironmentId;
  /// The target lifecycle stage.
  final String? targetLifecycleStage;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiSourceResult].
  /// [azureApiManagementSource] API source configuration for Azure API Management.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [importSpecification] Indicates if the specification should be imported along with metadata.
  /// [linkState] The state of the API source link
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetEnvironmentId] The target environment resource ID.
  /// [targetLifecycleStage] The target lifecycle stage.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApiSourceResult({
    this.azureApiManagementSource,
    required this.azureApiVersion,
    required this.id,
    this.importSpecification,
    required this.linkState,
    required this.name,
    required this.systemData,
    this.targetEnvironmentId,
    this.targetLifecycleStage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiManagementSource': ?azureApiManagementSource?.toMap(),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'importSpecification': ?importSpecification,
      'linkState': linkState.toMap(),
      'name': name,
      'systemData': systemData.toMap(),
      'targetEnvironmentId': ?targetEnvironmentId,
      'targetLifecycleStage': ?targetLifecycleStage,
      'type': type,
    };
  }

  factory GetApiSourceResult.fromMap(Map<String, dynamic> map) {
    return GetApiSourceResult(
      azureApiManagementSource: (() { final guardedValue = map['azureApiManagementSource']; if (guardedValue == null) return null; return AzureApiManagementSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      importSpecification: (() { final guardedValue = map['importSpecification']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkState: LinkStateResponse.fromMap((map['linkState']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      targetEnvironmentId: (() { final guardedValue = map['targetEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetLifecycleStage: (() { final guardedValue = map['targetLifecycleStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
