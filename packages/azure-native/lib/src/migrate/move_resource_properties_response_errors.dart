// ignore_for_file: unused_element, unnecessary_cast

import 'move_resource_error_body_response.dart';

/// Defines the move resource errors.
class MoveResourcePropertiesResponseErrors {
  /// The move resource error body.
  final MoveResourceErrorBodyResponse? properties;

  /// Creates a new [MoveResourcePropertiesResponseErrors].
  /// [properties] The move resource error body.
  MoveResourcePropertiesResponseErrors({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory MoveResourcePropertiesResponseErrors.fromMap(Map<String, dynamic> map) {
    return MoveResourcePropertiesResponseErrors(
      properties: map['properties'] == null ? null : MoveResourceErrorBodyResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

