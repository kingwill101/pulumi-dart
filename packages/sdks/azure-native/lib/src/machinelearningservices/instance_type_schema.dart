// ignore_for_file: unused_element, unnecessary_cast

import 'instance_type_schema_resources.dart';

/// Instance type schema.
class InstanceTypeSchema {
  /// Node Selector
  final Map<String, String>? nodeSelector;
  /// Resource requests/limits for this instance type
  final InstanceTypeSchemaResources? resources;

  /// Creates a new [InstanceTypeSchema].
  /// [nodeSelector] Node Selector
  /// [resources] Resource requests/limits for this instance type
  InstanceTypeSchema({
    this.nodeSelector,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSelector': ?nodeSelector,
      'resources': ?resources == null ? null : resources!.toMap(),
    };
  }

  factory InstanceTypeSchema.fromMap(Map<String, dynamic> map) {
    return InstanceTypeSchema(
      nodeSelector: map['nodeSelector'] == null ? null : (map['nodeSelector'] as Map).cast<String, String>(),
      resources: map['resources'] == null ? null : InstanceTypeSchemaResources.fromMap((map['resources'] as Map).cast<String, dynamic>()),
    );
  }
}

