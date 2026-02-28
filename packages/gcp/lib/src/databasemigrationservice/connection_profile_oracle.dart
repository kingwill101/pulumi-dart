// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_oracle_forward_ssh_connectivity.dart';
import 'connection_profile_oracle_private_connectivity.dart';
import 'connection_profile_oracle_ssl.dart';

class ConnectionProfileOracle {
  /// Required. Database service for the Oracle connection.
  final String databaseService;

  /// SSL configuration for the destination to connect to the source database.
  /// Structure is documented below.
  final ConnectionProfileOracleForwardSshConnectivity? forwardSshConnectivity;

  /// Required. The IP or hostname of the source Oracle database.
  final String host;

  /// Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String password;

  /// (Output)
  /// Output only. Indicates If this connection profile password is stored.
  final bool? passwordSet;

  /// Required. The network port of the source Oracle database.
  final int port;

  /// Configuration for using a private network to communicate with the source database
  /// Structure is documented below.
  final ConnectionProfileOraclePrivateConnectivity? privateConnectivity;

  /// SSL configuration for the destination to connect to the source database.
  /// Structure is documented below.
  final ConnectionProfileOracleSsl? ssl;

  /// This object has no nested fields.
  /// Static IP address connectivity configured on service project.
  final Map<String, dynamic>? staticServiceIpConnectivity;

  /// Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  /// Creates a new [ConnectionProfileOracle].
  /// [databaseService] Required. Database service for the Oracle connection.
  /// [forwardSshConnectivity] SSL configuration for the destination to connect to the source database.
  /// [host] Required. The IP or hostname of the source Oracle database.
  /// [password] Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// [passwordSet] (Output)
  /// [port] Required. The network port of the source Oracle database.
  /// [privateConnectivity] Configuration for using a private network to communicate with the source database
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [staticServiceIpConnectivity] This object has no nested fields.
  /// [username] Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  ConnectionProfileOracle({
    required this.databaseService,
    this.forwardSshConnectivity,
    required this.host,
    required this.password,
    this.passwordSet,
    required this.port,
    this.privateConnectivity,
    this.ssl,
    this.staticServiceIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseService'] = databaseService;
    final forwardSshConnectivityValue = forwardSshConnectivity;
    if (forwardSshConnectivityValue != null) {
      map['forwardSshConnectivity'] = forwardSshConnectivityValue.toMap();
    }
    map['host'] = host;
    map['password'] = password;
    final passwordSetValue = passwordSet;
    if (passwordSetValue != null) {
      map['passwordSet'] = passwordSetValue;
    }
    map['port'] = port;
    final privateConnectivityValue = privateConnectivity;
    if (privateConnectivityValue != null) {
      map['privateConnectivity'] = privateConnectivityValue.toMap();
    }
    final sslValue = ssl;
    if (sslValue != null) {
      map['ssl'] = sslValue.toMap();
    }
    final staticServiceIpConnectivityValue = staticServiceIpConnectivity;
    if (staticServiceIpConnectivityValue != null) {
      map['staticServiceIpConnectivity'] = staticServiceIpConnectivityValue;
    }
    map['username'] = username;
    return map;
  }

  factory ConnectionProfileOracle.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileOracle(
      databaseService: map['databaseService'] as String,
      forwardSshConnectivity: map['forwardSshConnectivity'] == null
          ? null
          : ConnectionProfileOracleForwardSshConnectivity.fromMap(
              (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      password: map['password'] as String,
      passwordSet:
          map['passwordSet'] == null ? null : map['passwordSet'] as bool,
      port: map['port'] as int,
      privateConnectivity: map['privateConnectivity'] == null
          ? null
          : ConnectionProfileOraclePrivateConnectivity.fromMap(
              (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      ssl: map['ssl'] == null
          ? null
          : ConnectionProfileOracleSsl.fromMap(
              (map['ssl'] as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null
          ? null
          : (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
      username: map['username'] as String,
    );
  }
}
