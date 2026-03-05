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
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTypeSchemaResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

