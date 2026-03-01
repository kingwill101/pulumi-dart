// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to Azure Data Explorer (Adx) Resource
class AdxProfileResponse {
  /// Data Ingestion Uri of Adx Resource
  final String dataIngestionUri;
  /// Resource Id of Adx Resource
  final String id;
  /// Uri of Adx Resource
  final String uri;

  /// Creates a new [AdxProfileResponse].
  /// [dataIngestionUri] Data Ingestion Uri of Adx Resource
  /// [id] Resource Id of Adx Resource
  /// [uri] Uri of Adx Resource
  AdxProfileResponse({
    required this.dataIngestionUri,
    required this.id,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIngestionUri': dataIngestionUri,
      'id': id,
      'uri': uri,
    };
  }

  factory AdxProfileResponse.fromMap(Map<String, dynamic> map) {
    return AdxProfileResponse(
      dataIngestionUri: map['dataIngestionUri'] as String,
      id: map['id'] as String,
      uri: map['uri'] as String,
    );
  }
}

