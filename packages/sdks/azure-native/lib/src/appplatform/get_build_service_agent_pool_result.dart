// ignore_for_file: unused_element, unnecessary_cast

import 'build_service_agent_pool_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBuildServiceAgentPool.
class GetBuildServiceAgentPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String id;
  /// The name of the resource.
  final String name;
  /// build service agent pool properties
  final BuildServiceAgentPoolPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetBuildServiceAgentPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] build service agent pool properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetBuildServiceAgentPoolResult({
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

  factory GetBuildServiceAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetBuildServiceAgentPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: BuildServiceAgentPoolPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
