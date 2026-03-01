// ignore_for_file: unused_element, unnecessary_cast


/// Mongo Connection
class MongoConnectionInformationResponse {
  /// Host of mongo connection.
  final String? host;
  /// Port of mongo connection.
  final int? port;

  /// Creates a new [MongoConnectionInformationResponse].
  /// [host] Host of mongo connection.
  /// [port] Port of mongo connection.
  MongoConnectionInformationResponse({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
    };
  }

  factory MongoConnectionInformationResponse.fromMap(Map<String, dynamic> map) {
    return MongoConnectionInformationResponse(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

