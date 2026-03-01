// ignore_for_file: unused_element, unnecessary_cast

import 'instance_type_schema_response_resources.dart';

/// Instance type schema.
class InstanceTypeSchemaResponse {
  /// Node Selector
  final Map<String, String>? nodeSelector;
  /// Resource requests/limits for this instance type
  final InstanceTypeSchemaResponseResources? resources;

  /// Creates a new [InstanceTypeSchemaResponse].
  /// [nodeSelector] Node Selector
  /// [resources] Resource requests/limits for this instance type
  InstanceTypeSchemaResponse({
    this.nodeSelector,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSelector': ?nodeSelector,
      'resources': ?resources == null ? null : resources!.toMap(),
    };
  }

  factory InstanceTypeSchemaResponse.fromMap(Map<String, dynamic> map) {
    return InstanceTypeSchemaResponse(
      nodeSelector: map['nodeSelector'] == null ? null : (map['nodeSelector'] as Map).cast<String, String>(),
      resources: map['resources'] == null ? null : InstanceTypeSchemaResponseResources.fromMap((map['resources'] as Map).cast<String, dynamic>()),
    );
  }
}

