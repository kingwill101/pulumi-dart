// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response.dart';
import 'private_connectivity_response.dart';
import 'ssl_config_response.dart';

/// Specifies connection parameters required specifically for Oracle databases.
class OracleConnectionProfileResponse {
  /// Database service for the Oracle connection.
  final String databaseService;

  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponse forwardSshConnectivity;

  /// The IP or hostname of the source Oracle database.
  final String host;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final String password;

  /// Indicates whether a new password is included in the request.
  final bool passwordSet;

  /// The network port of the source Oracle database.
  final int port;

  /// Private connectivity.
  final PrivateConnectivityResponse privateConnectivity;

  /// SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  final SslConfigResponse ssl;

  /// Static Service IP connectivity.
  final Map<String, dynamic> staticServiceIpConnectivity;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  /// Creates a new [OracleConnectionProfileResponse].
  /// [databaseService] Database service for the Oracle connection.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [host] The IP or hostname of the source Oracle database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [passwordSet] Indicates whether a new password is included in the request.
  /// [port] The network port of the source Oracle database.
  /// [privateConnectivity] Private connectivity.
  /// [ssl] SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  OracleConnectionProfileResponse({
    required this.databaseService,
    required this.forwardSshConnectivity,
    required this.host,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.privateConnectivity,
    required this.ssl,
    required this.staticServiceIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseService'] = databaseService;
    map['forwardSshConnectivity'] = forwardSshConnectivity.toMap();
    map['host'] = host;
    map['password'] = password;
    map['passwordSet'] = passwordSet;
    map['port'] = port;
    map['privateConnectivity'] = privateConnectivity.toMap();
    map['ssl'] = ssl.toMap();
    map['staticServiceIpConnectivity'] = staticServiceIpConnectivity;
    map['username'] = username;
    return map;
  }

  factory OracleConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return OracleConnectionProfileResponse(
      databaseService: map['databaseService'] as String,
      forwardSshConnectivity: ForwardSshTunnelConnectivityResponse.fromMap(
          (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      password: map['password'] as String,
      passwordSet: map['passwordSet'] as bool,
      port: map['port'] as int,
      privateConnectivity: PrivateConnectivityResponse.fromMap(
          (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      ssl: SslConfigResponse.fromMap(
          (map['ssl'] as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity:
          (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
      username: map['username'] as String,
    );
  }
}
