// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAkriConnectorTemplate.
class GetAkriConnectorTemplateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Edge location of the resource.
  final ExtendedLocationResponse? extendedLocation;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// The resource-specific properties for this resource.
  final AkriConnectorTemplatePropertiesResponse properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAkriConnectorTemplateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Edge location of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [properties] The resource-specific properties for this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAkriConnectorTemplateResult({
    required this.azureApiVersion,
    this.extendedLocation,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAkriConnectorTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetAkriConnectorTemplateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: AkriConnectorTemplatePropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
