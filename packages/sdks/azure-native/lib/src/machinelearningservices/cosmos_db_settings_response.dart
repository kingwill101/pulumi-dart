// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CosmosDbSettingsResponse {
  /// The throughput of the collections in cosmosdb database
  final pulumi.Input<int>? collectionsThroughput;

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
      collectionsThroughput: map['collectionsThroughput'] == null ? null : (map['collectionsThroughput']! as int).input(),
    );
  }
}

