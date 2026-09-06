// ignore_for_file: unused_element, unnecessary_cast

import 'policy_model_properties_response.dart';
import 'policy_model_response_system_data.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String? id;
  /// Gets or sets the name of the resource.
  final String? name;
  /// Policy model properties.
  final PolicyModelPropertiesResponse? properties;
  final PolicyModelResponseSystemData? systemData;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Policy model properties.
  /// [systemData] Optional.
  /// [type] Gets or sets the type of the resource.
  const GetPolicyResult({
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

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return PolicyModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return PolicyModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
