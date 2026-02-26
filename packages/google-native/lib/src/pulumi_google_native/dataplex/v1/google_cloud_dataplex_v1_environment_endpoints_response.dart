// ignore_for_file: unused_element, unnecessary_cast

/// URI Endpoints to access sessions associated with the Environment.
class GoogleCloudDataplexV1EnvironmentEndpointsResponse {
  /// URI to serve notebook APIs
  final String notebooks;

  /// URI to serve SQL APIs
  final String sql;

  GoogleCloudDataplexV1EnvironmentEndpointsResponse({
    required this.notebooks,
    required this.sql,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notebooks'] = notebooks;
    map['sql'] = sql;
    return map;
  }

  factory GoogleCloudDataplexV1EnvironmentEndpointsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentEndpointsResponse(
      notebooks: map['notebooks'] as String,
      sql: map['sql'] as String,
    );
  }
}
