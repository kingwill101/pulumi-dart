// ignore_for_file: unused_element, unnecessary_cast

import 'move_resource_error_body_response.dart';

/// Defines the move collection errors.
class MoveCollectionPropertiesResponseErrors {
  /// The move resource error body.
  final MoveResourceErrorBodyResponse? properties;

  /// Creates a new [MoveCollectionPropertiesResponseErrors].
  /// [properties] The move resource error body.
  MoveCollectionPropertiesResponseErrors({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory MoveCollectionPropertiesResponseErrors.fromMap(Map<String, dynamic> map) {
    return MoveCollectionPropertiesResponseErrors(
      properties: map['properties'] == null ? null : MoveResourceErrorBodyResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

