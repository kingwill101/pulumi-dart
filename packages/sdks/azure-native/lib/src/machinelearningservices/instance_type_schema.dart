// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type_schema_resources.dart';

/// Instance type schema.
class InstanceTypeSchema {
  /// Node Selector
  final pulumi.Input<Map<String, String>>? nodeSelector;
  /// Resource requests/limits for this instance type
  final pulumi.Input<InstanceTypeSchemaResources>? resources;

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
      'resources': ?pulumi.Input.mapOptionalInputValue<InstanceTypeSchemaResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory InstanceTypeSchema.fromMap(Map<String, dynamic> map) {
    return InstanceTypeSchema(
      nodeSelector: map['nodeSelector'] == null ? null : ((map['nodeSelector'] as Map).cast<String, String>()).input(),
      resources: map['resources'] == null ? null : (InstanceTypeSchemaResources.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

