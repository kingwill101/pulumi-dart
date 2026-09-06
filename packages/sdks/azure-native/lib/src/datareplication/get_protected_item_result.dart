// ignore_for_file: unused_element, unnecessary_cast

import 'protected_item_model_properties_response.dart';
import 'protected_item_model_response_system_data.dart';

/// Result data returned by getProtectedItem.
class GetProtectedItemResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String? id;
  /// Gets or sets the name of the resource.
  final String? name;
  /// Protected item model properties.
  final ProtectedItemModelPropertiesResponse? properties;
  final ProtectedItemModelResponseSystemData? systemData;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetProtectedItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Protected item model properties.
  /// [systemData] Optional.
  /// [type] Gets or sets the type of the resource.
  const GetProtectedItemResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetProtectedItemResult.fromMap(Map<String, dynamic> map) {
    return GetProtectedItemResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ProtectedItemModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return ProtectedItemModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
