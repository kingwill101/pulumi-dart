// ignore_for_file: unused_element, unnecessary_cast

import 'workload_deployment_model_properties_response.dart';
import 'workload_deployment_model_response_system_data.dart';

/// Result data returned by getWorkloadDeploymentSecretConfigurations.
class GetWorkloadDeploymentSecretConfigurationsResult {
  /// Gets or sets the Id of the resource.
  final String id;
  /// Gets or sets the name of the resource.
  final String name;
  /// Workload deployment model properties.
  final WorkloadDeploymentModelPropertiesResponse properties;
  final WorkloadDeploymentModelResponseSystemData systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String type;

  /// Creates a new [GetWorkloadDeploymentSecretConfigurationsResult].
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Workload deployment model properties.
  /// [systemData] Required.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  GetWorkloadDeploymentSecretConfigurationsResult({
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWorkloadDeploymentSecretConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadDeploymentSecretConfigurationsResult(
      id: map['id'] as String,
      name: map['name'] as String,
      properties: WorkloadDeploymentModelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: WorkloadDeploymentModelResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

