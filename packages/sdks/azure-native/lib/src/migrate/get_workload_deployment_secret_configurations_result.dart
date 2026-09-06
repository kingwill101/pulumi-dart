// ignore_for_file: unused_element, unnecessary_cast

import 'workload_deployment_model_properties_response.dart';
import 'workload_deployment_model_response_system_data.dart';

/// Result data returned by getWorkloadDeploymentSecretConfigurations.
class GetWorkloadDeploymentSecretConfigurationsResult {
  /// Gets or sets the Id of the resource.
  final String? id;
  /// Gets or sets the name of the resource.
  final String? name;
  /// Workload deployment model properties.
  final WorkloadDeploymentModelPropertiesResponse? properties;
  final WorkloadDeploymentModelResponseSystemData? systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetWorkloadDeploymentSecretConfigurationsResult].
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Workload deployment model properties.
  /// [systemData] Optional.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  const GetWorkloadDeploymentSecretConfigurationsResult({
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetWorkloadDeploymentSecretConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadDeploymentSecretConfigurationsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return WorkloadDeploymentModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return WorkloadDeploymentModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
