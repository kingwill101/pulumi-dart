// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource requests/limits for this instance type
class InstanceTypeSchemaResources {
  /// Resource limits for this instance type
  final pulumi.Input<Map<String, String>>? limits;
  /// Resource requests for this instance type
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [InstanceTypeSchemaResources].
  /// [limits] Resource limits for this instance type
  /// [requests] Resource requests for this instance type
  InstanceTypeSchemaResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory InstanceTypeSchemaResources.fromMap(Map<String, dynamic> map) {
    return InstanceTypeSchemaResources(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

