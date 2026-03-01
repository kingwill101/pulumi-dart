// ignore_for_file: unused_element, unnecessary_cast

import 'destination_response.dart';

/// Definition of DataExport
class DataExportResponse {
  /// The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  final DestinationResponse? destination;
  /// The version of the output schema to use when exporting data. Must be ``V_1``.
  final String? outputSchemaVersion;

  /// Creates a new [DataExportResponse].
  /// [destination] The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  /// [outputSchemaVersion] The version of the output schema to use when exporting data. Must be ``V_1``.
  DataExportResponse({
    this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination == null ? null : destination!.toMap(),
      'outputSchemaVersion': ?outputSchemaVersion,
    };
  }

  factory DataExportResponse.fromMap(Map<String, dynamic> map) {
    return DataExportResponse(
      destination: map['destination'] == null ? null : DestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      outputSchemaVersion: map['outputSchemaVersion'] == null ? null : map['outputSchemaVersion'] as String,
    );
  }
}

