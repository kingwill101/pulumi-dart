// ignore_for_file: unused_element, unnecessary_cast


/// Mongo Connection
class MongoConnectionInformation {
  /// ConnectionString to connect to Mongo.
  final String? connectionString;
  /// Host of mongo connection.
  final String? host;
  /// Password to connect to Mongo.
  final String? password;
  /// Port of mongo connection.
  final int? port;
  /// Whether to UseSsl or UseTls to connect to Mongo. Default is true.
  final bool? useSsl;
  /// User name to connect to Mongo.
  final String? userName;

  /// Creates a new [MongoConnectionInformation].
  /// [connectionString] ConnectionString to connect to Mongo.
  /// [host] Host of mongo connection.
  /// [password] Password to connect to Mongo.
  /// [port] Port of mongo connection.
  /// [useSsl] Whether to UseSsl or UseTls to connect to Mongo. Default is true.
  /// [userName] User name to connect to Mongo.
  MongoConnectionInformation({
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
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

