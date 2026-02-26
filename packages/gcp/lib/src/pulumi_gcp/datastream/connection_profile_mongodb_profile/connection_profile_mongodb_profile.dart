// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_profile_mongodb_profile_host_address/connection_profile_mongodb_profile_host_address.dart';
import '../connection_profile_mongodb_profile_ssl_config/connection_profile_mongodb_profile_ssl_config.dart';
import '../connection_profile_mongodb_profile_standard_connection_format/connection_profile_mongodb_profile_standard_connection_format.dart';

class ConnectionProfileMongodbProfile {
  /// List of host addresses for a MongoDB cluster.
  /// Structure is documented below.
  final List<ConnectionProfileMongodbProfileHostAddress> hostAddresses;

  /// Password for the MongoDB connection. Mutually exclusive with
  /// secretManagerStoredPassword.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// Name of the replica set.
  final String? replicaSet;

  /// A reference to a Secret Manager resource name storing the MongoDB
  /// connection password. Mutually exclusive with password.
  final String? secretManagerStoredPassword;

  /// Srv connection format. Mutually exclusive with
  /// standard_connection_Format.
  final Map<String, dynamic>? srvConnectionFormat;

  /// SSL configuration for the MongoDB connection.
  /// Structure is documented below.
  final ConnectionProfileMongodbProfileSslConfig? sslConfig;

  /// Standard connection format. Mutually exclusive with
  /// srv_connection_format.
  /// Structure is documented below.
  final ConnectionProfileMongodbProfileStandardConnectionFormat?
      standardConnectionFormat;

  /// Username for the MongoDB connection.
  final String username;

  ConnectionProfileMongodbProfile({
    required this.hostAddresses,
    this.password,
    this.replicaSet,
    this.secretManagerStoredPassword,
    this.srvConnectionFormat,
    this.sslConfig,
    this.standardConnectionFormat,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostAddresses'] = Input.encodeList<
        ConnectionProfileMongodbProfileHostAddress,
        Map<String, dynamic>>(hostAddresses, (value) => value.toMap());
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final replicaSetValue = replicaSet;
    if (replicaSetValue != null) {
      map['replicaSet'] = replicaSetValue;
    }
    final secretManagerStoredPasswordValue = secretManagerStoredPassword;
    if (secretManagerStoredPasswordValue != null) {
      map['secretManagerStoredPassword'] = secretManagerStoredPasswordValue;
    }
    final srvConnectionFormatValue = srvConnectionFormat;
    if (srvConnectionFormatValue != null) {
      map['srvConnectionFormat'] = srvConnectionFormatValue;
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] = sslConfigValue.toMap();
    }
    final standardConnectionFormatValue = standardConnectionFormat;
    if (standardConnectionFormatValue != null) {
      map['standardConnectionFormat'] = standardConnectionFormatValue.toMap();
    }
    map['username'] = username;
    return map;
  }

  factory ConnectionProfileMongodbProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfile(
      hostAddresses:
          Input.decodeList<ConnectionProfileMongodbProfileHostAddress>(
              map['hostAddresses'],
              (value) => ConnectionProfileMongodbProfileHostAddress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : map['password'] as String,
      replicaSet:
          map['replicaSet'] == null ? null : map['replicaSet'] as String,
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null
          ? null
          : map['secretManagerStoredPassword'] as String,
      srvConnectionFormat: map['srvConnectionFormat'] == null
          ? null
          : (map['srvConnectionFormat'] as Map).cast<String, dynamic>(),
      sslConfig: map['sslConfig'] == null
          ? null
          : ConnectionProfileMongodbProfileSslConfig.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>()),
      standardConnectionFormat: map['standardConnectionFormat'] == null
          ? null
          : ConnectionProfileMongodbProfileStandardConnectionFormat.fromMap(
              (map['standardConnectionFormat'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
