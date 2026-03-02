// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mongo Connection
class MongoConnectionInformationResponse {
  /// Host of mongo connection.
  final pulumi.Input<String>? host;
  /// Port of mongo connection.
  final pulumi.Input<int>? port;

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
      host: map['host'] == null ? null : (map['host']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

