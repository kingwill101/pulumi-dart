// ignore_for_file: unused_element, unnecessary_cast

/// The details of a metadata export operation.
class MetadataExportResponse3 {
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

  MetadataExportResponse3({
    required this.databaseDumpType,
    required this.destinationGcsUri,
    required this.endTime,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseDumpType'] = databaseDumpType;
    map['destinationGcsUri'] = destinationGcsUri;
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    map['state'] = state;
    return map;
  }

  factory MetadataExportResponse3.fromMap(Map<String, dynamic> map) {
    return MetadataExportResponse3(
      databaseDumpType: map['databaseDumpType'] as String,
      destinationGcsUri: map['destinationGcsUri'] as String,
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}
