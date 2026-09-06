// ignore_for_file: unused_element, unnecessary_cast

import 'api_definition_properties_specification_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApiDefinition.
class GetApiDefinitionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// API definition description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// API specification details.
  final ApiDefinitionPropertiesSpecificationResponse? specification;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// API definition title.
  final String? title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetApiDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] API definition description.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [specification] API specification details.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] API definition title.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApiDefinitionResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.name,
    this.specification,
    this.systemData,
    this.title,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'specification': ?specification?.toMap(),
      'systemData': ?systemData?.toMap(),
      'title': ?title,
      'type': ?type,
    };
  }

  factory GetApiDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetApiDefinitionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return ApiDefinitionPropertiesSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
