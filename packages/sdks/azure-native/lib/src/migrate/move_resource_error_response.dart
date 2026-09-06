// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_resource_error_body_response.dart';

/// An error response from the azure resource mover service.
class MoveResourceErrorResponse {
  /// The move resource error body.
  final pulumi.Input<MoveResourceErrorBodyResponse?>? properties;

  /// Creates a new [MoveResourceErrorResponse].
  /// [properties] The move resource error body.
  const MoveResourceErrorResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<MoveResourceErrorBodyResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory MoveResourceErrorResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceErrorResponse(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MoveResourceErrorBodyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
