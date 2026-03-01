// ignore_for_file: unused_element, unnecessary_cast

/// The details of a metadata export operation.
class MetadataExportResponseMetastoreV1beta {
  /// The type of the database dump.
  final String databaseDumpType;

  /// A Cloud Storage URI of a folder that metadata are exported to, in the form of gs:////, where is automatically generated.
  final String destinationGcsUri;

  /// The time when the export ended.
  final String endTime;

  /// The time when the export started.
  final String startTime;

  /// The current state of the export.
  final String state;

  /// Creates a new [MetadataExportResponseMetastoreV1beta].
  /// [databaseDumpType] The type of the database dump.
  /// [destinationGcsUri] A Cloud Storage URI of a folder that metadata are exported to, in the form of gs:////, where is automatically generated.
  /// [endTime] The time when the export ended.
  /// [startTime] The time when the export started.
  /// [state] The current state of the export.
  MetadataExportResponseMetastoreV1beta({
    required this.databaseDumpType,
    required this.destinationGcsUri,
    required this.endTime,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDumpType': databaseDumpType,
      'destinationGcsUri': destinationGcsUri,
      'endTime': endTime,
      'startTime': startTime,
      'state': state,
    };
  }

  factory MetadataExportResponseMetastoreV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetadataExportResponseMetastoreV1beta(
      databaseDumpType: map['databaseDumpType'] as String,
      destinationGcsUri: map['destinationGcsUri'] as String,
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}
