// ignore_for_file: unused_element, unnecessary_cast

class ExternalDatasetReference {
  /// [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  final String? connection;

  /// [Required] External source that backs this dataset.
  final String? externalSource;

  /// Creates a new [ExternalDatasetReference].
  /// [connection] [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  /// [externalSource] [Required] External source that backs this dataset.
  ExternalDatasetReference({this.connection, this.externalSource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection,
      'externalSource': ?externalSource,
    };
  }

  factory ExternalDatasetReference.fromMap(Map<String, dynamic> map) {
    return ExternalDatasetReference(
      connection: map['connection'] == null
          ? null
          : map['connection'] as String,
      externalSource: map['externalSource'] == null
          ? null
          : map['externalSource'] as String,
    );
  }
}
