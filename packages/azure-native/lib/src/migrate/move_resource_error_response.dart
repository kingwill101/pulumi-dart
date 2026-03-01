// ignore_for_file: unused_element, unnecessary_cast

import 'move_resource_error_body_response.dart';

/// An error response from the azure resource mover service.
class MoveResourceErrorResponse {
  /// The move resource error body.
  final MoveResourceErrorBodyResponse? properties;

  /// Creates a new [MoveResourceErrorResponse].
  /// [properties] The move resource error body.
  MoveResourceErrorResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory MoveResourceErrorResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceErrorResponse(
      properties: map['properties'] == null ? null : MoveResourceErrorBodyResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

