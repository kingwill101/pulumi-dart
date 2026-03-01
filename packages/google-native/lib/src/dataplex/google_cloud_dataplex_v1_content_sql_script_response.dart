// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Sql Script content.
class GoogleCloudDataplexV1ContentSqlScriptResponse {
  /// Query Engine to be used for the Sql Query.
  final String engine;

  /// Creates a new [GoogleCloudDataplexV1ContentSqlScriptResponse].
  /// [engine] Query Engine to be used for the Sql Query.
  GoogleCloudDataplexV1ContentSqlScriptResponse({required this.engine});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'engine': engine};
  }

  factory GoogleCloudDataplexV1ContentSqlScriptResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1ContentSqlScriptResponse(
      engine: map['engine'] as String,
    );
  }
}
