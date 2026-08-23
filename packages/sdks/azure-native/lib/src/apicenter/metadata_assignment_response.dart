// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Assignment metadata
class MetadataAssignmentResponse {
  /// Deprecated assignment
  final pulumi.Input<bool>? deprecated;
  /// The entities this metadata schema component gets applied to.
  final pulumi.Input<String>? entity;
  /// Required assignment
  final pulumi.Input<bool>? required;

  /// Creates a new [MetadataAssignmentResponse].
  /// [deprecated] Deprecated assignment
  /// [entity] The entities this metadata schema component gets applied to.
  /// [required] Required assignment
  const MetadataAssignmentResponse({
    this.deprecated,
    this.entity,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecated': ?deprecated,
      'entity': ?entity,
      'required': ?required,
    };
  }

  factory MetadataAssignmentResponse.fromMap(Map<String, dynamic> map) {
    return MetadataAssignmentResponse(
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
