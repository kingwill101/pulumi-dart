// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cluster_client_authentication_sasl.dart';

class ServerlessClusterClientAuthentication {
  /// Details for client authentication using SASL. See below.
  final pulumi.Input<ServerlessClusterClientAuthenticationSasl> sasl;

  /// Creates a new [ServerlessClusterClientAuthentication].
  /// [sasl] Details for client authentication using SASL. See below.
  const ServerlessClusterClientAuthentication({
    required this.sasl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasl': pulumi.Input.mapInputValue<ServerlessClusterClientAuthenticationSasl, Map<String, dynamic>>(sasl, (value) => value.toMap()),
    };
  }

  factory ServerlessClusterClientAuthentication.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterClientAuthentication(
      sasl: pulumi.Input.fromValue(ServerlessClusterClientAuthenticationSasl.fromMap((map['sasl']! as Map).cast<String, dynamic>())),
    );
  }
}
