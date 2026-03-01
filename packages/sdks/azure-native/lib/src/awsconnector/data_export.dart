// ignore_for_file: unused_element, unnecessary_cast

import 'destination.dart';

/// Definition of DataExport
class DataExport {
  /// The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  final Destination? destination;
  /// The version of the output schema to use when exporting data. Must be ``V_1``.
  final String? outputSchemaVersion;

  /// Creates a new [DataExport].
  /// [destination] The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  /// [outputSchemaVersion] The version of the output schema to use when exporting data. Must be ``V_1``.
  DataExport({
    this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination == null ? null : destination!.toMap(),
      'outputSchemaVersion': ?outputSchemaVersion,
    };
  }

  factory DataExport.fromMap(Map<String, dynamic> map) {
    return DataExport(
      destination: map['destination'] == null ? null : Destination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      outputSchemaVersion: map['outputSchemaVersion'] == null ? null : map['outputSchemaVersion'] as String,
    );
  }
}

