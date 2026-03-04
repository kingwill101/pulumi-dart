// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_state_response_deprecated_by.dart';

/// Dataset state
class DatasetStateResponse {
  /// Reference to better Dataset or a Definition
  final pulumi.Input<DatasetStateResponseDeprecatedBy>? deprecatedBy;

  /// eTag description
  final pulumi.Input<String> etag;

  /// Dataset state
  final pulumi.Input<String>? state;

  /// Creates a new [DatasetStateResponse].
  /// [deprecatedBy] Reference to better Dataset or a Definition
  /// [etag] eTag description
  /// [state] Dataset state
  DatasetStateResponse({this.deprecatedBy, required this.etag, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecatedBy':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetStateResponseDeprecatedBy,
            Map<String, dynamic>
          >(deprecatedBy, (value) => value.toMap()),
      'etag': etag,
      'state': ?state,
    };
  }

  factory DatasetStateResponse.fromMap(Map<String, dynamic> map) {
    return DatasetStateResponse(
      deprecatedBy: (() {
        final guardedValue = map['deprecatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetStateResponseDeprecatedBy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
