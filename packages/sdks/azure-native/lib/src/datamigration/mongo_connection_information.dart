// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mongo Connection
class MongoConnectionInformation {
  /// ConnectionString to connect to Mongo.
  final pulumi.Input<String?>? connectionString;
  /// Host of mongo connection.
  final pulumi.Input<String?>? host;
  /// Password to connect to Mongo.
  final pulumi.Input<String?>? password;
  /// Port of mongo connection.
  final pulumi.Input<int?>? port;
  /// Whether to UseSsl or UseTls to connect to Mongo. Default is true.
  final pulumi.Input<bool?>? useSsl;
  /// User name to connect to Mongo.
  final pulumi.Input<String?>? userName;

  /// Creates a new [MongoConnectionInformation].
  /// [connectionString] ConnectionString to connect to Mongo.
  /// [host] Host of mongo connection.
  /// [password] Password to connect to Mongo.
  /// [port] Port of mongo connection.
  /// [useSsl] Whether to UseSsl or UseTls to connect to Mongo. Default is true.
  /// [userName] User name to connect to Mongo.
  const MongoConnectionInformation({
    this.connectionString,
    this.host,
    this.password,
    this.port,
    this.useSsl,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'host': ?host,
      'password': ?password,
      'port': ?port,
      'useSsl': ?useSsl,
      'userName': ?userName,
    };
  }

  factory MongoConnectionInformation.fromMap(Map<String, dynamic> map) {
    return MongoConnectionInformation(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      useSsl: (() { final guardedValue = map['useSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
