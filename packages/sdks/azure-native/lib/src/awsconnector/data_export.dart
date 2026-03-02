// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination.dart';

/// Definition of DataExport
class DataExport {
  /// The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  final pulumi.Input<Destination>? destination;
  /// The version of the output schema to use when exporting data. Must be ``V_1``.
  final pulumi.Input<String>? outputSchemaVersion;

  /// Creates a new [DataExport].
  /// [destination] The place to store the data for an analysis. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  /// [outputSchemaVersion] The version of the output schema to use when exporting data. Must be ``V_1``.
  DataExport({
    this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<Destination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'outputSchemaVersion': ?outputSchemaVersion,
    };
  }

  factory DataExport.fromMap(Map<String, dynamic> map) {
    return DataExport(
      destination: map['destination'] == null ? null : (Destination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      outputSchemaVersion: map['outputSchemaVersion'] == null ? null : (map['outputSchemaVersion']! as String).input(),
    );
  }
}

