// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity.dart';
import 'private_connectivity.dart';
import 'ssl_config.dart';

/// Specifies connection parameters required specifically for Oracle databases.
class OracleConnectionProfile {
  /// Database service for the Oracle connection.
  final String databaseService;

  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivity? forwardSshConnectivity;

  /// The IP or hostname of the source Oracle database.
  final String host;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final String password;

  /// The network port of the source Oracle database.
  final int port;

  /// Private connectivity.
  final PrivateConnectivity? privateConnectivity;

  /// SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  final SslConfig? ssl;

  /// Static Service IP connectivity.
  final Map<String, dynamic>? staticServiceIpConnectivity;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  /// Creates a new [OracleConnectionProfile].
  /// [databaseService] Database service for the Oracle connection.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [host] The IP or hostname of the source Oracle database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [port] The network port of the source Oracle database.
  /// [privateConnectivity] Private connectivity.
  /// [ssl] SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  OracleConnectionProfile({
    required this.databaseService,
    this.forwardSshConnectivity,
    required this.host,
    required this.password,
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

  factory OracleConnectionProfile.fromMap(Map<String, dynamic> map) {
    return OracleConnectionProfile(
      databaseService: map['databaseService'] as String,
      forwardSshConnectivity: map['forwardSshConnectivity'] == null
          ? null
          : ForwardSshTunnelConnectivity.fromMap(
              (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateConnectivity: map['privateConnectivity'] == null
          ? null
          : PrivateConnectivity.fromMap(
              (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      ssl: map['ssl'] == null
          ? null
          : SslConfig.fromMap((map['ssl'] as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null
          ? null
          : (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
      username: map['username'] as String,
    );
  }
}
