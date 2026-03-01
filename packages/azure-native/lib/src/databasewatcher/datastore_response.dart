// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a data store.
class DatastoreResponse {
  /// The Azure resource ID of an Azure Data Explorer cluster.
  final String? adxClusterResourceId;
  /// The Kusto cluster display name.
  final String? kustoClusterDisplayName;
  /// The Kusto cluster URI.
  final String kustoClusterUri;
  /// The Kusto data ingestion URI.
  final String kustoDataIngestionUri;
  /// The name of a Kusto database.
  final String kustoDatabaseName;
  /// The Kusto management URL.
  final String kustoManagementUrl;
  /// The type of a Kusto offering.
  final String kustoOfferingType;

  /// Creates a new [DatastoreResponse].
  /// [adxClusterResourceId] The Azure resource ID of an Azure Data Explorer cluster.
  /// [kustoClusterDisplayName] The Kusto cluster display name.
  /// [kustoClusterUri] The Kusto cluster URI.
  /// [kustoDataIngestionUri] The Kusto data ingestion URI.
  /// [kustoDatabaseName] The name of a Kusto database.
  /// [kustoManagementUrl] The Kusto management URL.
  /// [kustoOfferingType] The type of a Kusto offering.
  DatastoreResponse({
    this.adxClusterResourceId,
    this.kustoClusterDisplayName,
    required this.kustoClusterUri,
    required this.kustoDataIngestionUri,
    required this.kustoDatabaseName,
    required this.kustoManagementUrl,
    required this.kustoOfferingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adxClusterResourceId': ?adxClusterResourceId,
      'kustoClusterDisplayName': ?kustoClusterDisplayName,
      'kustoClusterUri': kustoClusterUri,
      'kustoDataIngestionUri': kustoDataIngestionUri,
      'kustoDatabaseName': kustoDatabaseName,
      'kustoManagementUrl': kustoManagementUrl,
      'kustoOfferingType': kustoOfferingType,
    };
  }

  factory DatastoreResponse.fromMap(Map<String, dynamic> map) {
    return DatastoreResponse(
      adxClusterResourceId: map['adxClusterResourceId'] == null ? null : map['adxClusterResourceId'] as String,
      kustoClusterDisplayName: map['kustoClusterDisplayName'] == null ? null : map['kustoClusterDisplayName'] as String,
      kustoClusterUri: map['kustoClusterUri'] as String,
      kustoDataIngestionUri: map['kustoDataIngestionUri'] as String,
      kustoDatabaseName: map['kustoDatabaseName'] as String,
      kustoManagementUrl: map['kustoManagementUrl'] as String,
      kustoOfferingType: map['kustoOfferingType'] as String,
    );
  }
}

