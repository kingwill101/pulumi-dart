// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_rdbms_response_datastream_v1alpha1.dart';

/// Oracle data source configuration
class OracleSourceConfigResponseDatastreamV1alpha1 {
  /// Oracle objects to include in the stream.
  final OracleRdbmsResponseDatastreamV1alpha1 allowlist;

  /// Drop large object values.
  final Map<String, dynamic> dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  final OracleRdbmsResponseDatastreamV1alpha1 rejectlist;

  /// Creates a new [OracleSourceConfigResponseDatastreamV1alpha1].
  /// [allowlist] Oracle objects to include in the stream.
  /// [dropLargeObjects] Drop large object values.
  /// [rejectlist] Oracle objects to exclude from the stream.
  OracleSourceConfigResponseDatastreamV1alpha1({
    required this.allowlist,
    required this.dropLargeObjects,
    required this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlist': allowlist.toMap(),
      'dropLargeObjects': dropLargeObjects,
      'rejectlist': rejectlist.toMap(),
    };
  }

  factory OracleSourceConfigResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return OracleSourceConfigResponseDatastreamV1alpha1(
      allowlist: OracleRdbmsResponseDatastreamV1alpha1.fromMap(
        (map['allowlist'] as Map).cast<String, dynamic>(),
      ),
      dropLargeObjects: (map['dropLargeObjects'] as Map)
          .cast<String, dynamic>(),
      rejectlist: OracleRdbmsResponseDatastreamV1alpha1.fromMap(
        (map['rejectlist'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
