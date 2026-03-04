// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_resource_error_body_response.dart';

/// Defines the move collection errors.
class MoveCollectionPropertiesResponseErrors {
  /// The move resource error body.
  final pulumi.Input<MoveResourceErrorBodyResponse>? properties;

  /// Creates a new [MoveCollectionPropertiesResponseErrors].
  /// [properties] The move resource error body.
  MoveCollectionPropertiesResponseErrors({this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            MoveResourceErrorBodyResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory MoveCollectionPropertiesResponseErrors.fromMap(
    Map<String, dynamic> map,
  ) {
    return MoveCollectionPropertiesResponseErrors(
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MoveResourceErrorBodyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
