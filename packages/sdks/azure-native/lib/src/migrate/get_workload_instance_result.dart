// ignore_for_file: unused_element, unnecessary_cast

import 'workload_instance_model_properties_response.dart';
import 'workload_instance_model_response_system_data.dart';

/// Result data returned by getWorkloadInstance.
class GetWorkloadInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the name of the resource.
  final String name;
  /// Workload instance model properties.
  final WorkloadInstanceModelPropertiesResponse properties;
  final WorkloadInstanceModelResponseSystemData systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetWorkloadInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Workload instance model properties.
  /// [systemData] Required.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  const GetWorkloadInstanceResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWorkloadInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: WorkloadInstanceModelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: WorkloadInstanceModelResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

