// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';

/// Definition of DataExport
class DataExportResponse {
  /// The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  final pulumi.Input<DestinationResponse>? destination;
  /// The version of the output schema to use when exporting data. Must be ``V_1``.
  final pulumi.Input<String>? outputSchemaVersion;

  /// Creates a new [DataExportResponse].
  /// [destination] The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  /// [outputSchemaVersion] The version of the output schema to use when exporting data. Must be ``V_1``.
  const DataExportResponse({
    this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<DestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'outputSchemaVersion': ?outputSchemaVersion,
    };
  }

  factory DataExportResponse.fromMap(Map<String, dynamic> map) {
    return DataExportResponse(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputSchemaVersion: (() { final guardedValue = map['outputSchemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
