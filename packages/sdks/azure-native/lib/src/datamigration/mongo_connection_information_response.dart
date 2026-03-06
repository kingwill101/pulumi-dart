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
  const MongoConnectionInformationResponse({
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
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

