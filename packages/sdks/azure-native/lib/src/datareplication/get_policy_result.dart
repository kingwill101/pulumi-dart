// ignore_for_file: unused_element, unnecessary_cast

import 'policy_model_properties_response.dart';
import 'policy_model_response_system_data.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the name of the resource.
  final String name;
  /// Policy model properties.
  final PolicyModelPropertiesResponse properties;
  final PolicyModelResponseSystemData systemData;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Policy model properties.
  /// [systemData] Required.
  /// [type] Gets or sets the type of the resource.
  GetPolicyResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: PolicyModelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: PolicyModelResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

