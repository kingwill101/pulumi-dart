// ignore_for_file: unused_element, unnecessary_cast

class ExternalDatasetReferenceResponse {
  /// [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  final String connection;

  /// [Required] External source that backs this dataset.
  final String externalSource;

  ExternalDatasetReferenceResponse({
    required this.connection,
    required this.externalSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connection'] = connection;
    map['externalSource'] = externalSource;
    return map;
  }

  factory ExternalDatasetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ExternalDatasetReferenceResponse(
      connection: map['connection'] as String,
      externalSource: map['externalSource'] as String,
    );
  }
}
