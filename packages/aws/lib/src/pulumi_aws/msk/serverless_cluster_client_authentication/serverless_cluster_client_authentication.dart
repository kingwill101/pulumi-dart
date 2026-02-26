// ignore_for_file: unused_element, unnecessary_cast

import '../serverless_cluster_client_authentication_sasl/serverless_cluster_client_authentication_sasl.dart';

class ServerlessClusterClientAuthentication {
  /// Details for client authentication using SASL. See below.
  final ServerlessClusterClientAuthenticationSasl sasl;

  ServerlessClusterClientAuthentication({
    required this.sasl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sasl'] = sasl.toMap();
    return map;
  }

  factory ServerlessClusterClientAuthentication.fromMap(
      Map<String, dynamic> map) {
    return ServerlessClusterClientAuthentication(
      sasl: ServerlessClusterClientAuthenticationSasl.fromMap(
          (map['sasl'] as Map).cast<String, dynamic>()),
    );
  }
}
