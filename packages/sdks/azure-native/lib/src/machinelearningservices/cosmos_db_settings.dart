// ignore_for_file: unused_element, unnecessary_cast


class CosmosDbSettings {
  /// The throughput of the collections in cosmosdb database
  final int? collectionsThroughput;

  /// Creates a new [CosmosDbSettings].
  /// [collectionsThroughput] The throughput of the collections in cosmosdb database
  CosmosDbSettings({
    this.collectionsThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionsThroughput': ?collectionsThroughput,
    };
  }

  factory CosmosDbSettings.fromMap(Map<String, dynamic> map) {
    return CosmosDbSettings(
      collectionsThroughput: map['collectionsThroughput'] == null ? null : map['collectionsThroughput'] as int,
    );
  }
}

