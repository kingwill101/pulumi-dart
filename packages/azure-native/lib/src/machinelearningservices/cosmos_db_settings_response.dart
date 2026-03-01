// ignore_for_file: unused_element, unnecessary_cast


class CosmosDbSettingsResponse {
  /// The throughput of the collections in cosmosdb database
  final int? collectionsThroughput;

  /// Creates a new [CosmosDbSettingsResponse].
  /// [collectionsThroughput] The throughput of the collections in cosmosdb database
  CosmosDbSettingsResponse({
    this.collectionsThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionsThroughput': ?collectionsThroughput,
    };
  }

  factory CosmosDbSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CosmosDbSettingsResponse(
      collectionsThroughput: map['collectionsThroughput'] == null ? null : map['collectionsThroughput'] as int,
    );
  }
}

