// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_resource_error_body_response.dart';

/// Defines the move resource errors.
class MoveResourcePropertiesResponseErrors {
  /// The move resource error body.
  final pulumi.Input<MoveResourceErrorBodyResponse>? properties;

  /// Creates a new [MoveResourcePropertiesResponseErrors].
  /// [properties] The move resource error body.
  MoveResourcePropertiesResponseErrors({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<MoveResourceErrorBodyResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory MoveResourcePropertiesResponseErrors.fromMap(Map<String, dynamic> map) {
    return MoveResourcePropertiesResponseErrors(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MoveResourceErrorBodyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

