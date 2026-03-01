// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_state_response_deprecated_by.dart';

/// Dataset state
class DatasetStateResponse {
  /// Reference to better Dataset or a Definition
  final DatasetStateResponseDeprecatedBy? deprecatedBy;
  /// eTag description
  final String etag;
  /// Dataset state
  final String? state;

  /// Creates a new [DatasetStateResponse].
  /// [deprecatedBy] Reference to better Dataset or a Definition
  /// [etag] eTag description
  /// [state] Dataset state
  DatasetStateResponse({
    this.deprecatedBy,
    required this.etag,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecatedBy': ?deprecatedBy == null ? null : deprecatedBy!.toMap(),
      'etag': etag,
      'state': ?state,
    };
  }

  factory DatasetStateResponse.fromMap(Map<String, dynamic> map) {
    return DatasetStateResponse(
      deprecatedBy: map['deprecatedBy'] == null ? null : DatasetStateResponseDeprecatedBy.fromMap((map['deprecatedBy'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

