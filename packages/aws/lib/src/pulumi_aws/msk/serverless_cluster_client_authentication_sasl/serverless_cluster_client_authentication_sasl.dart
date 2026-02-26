// ignore_for_file: unused_element, unnecessary_cast

import '../serverless_cluster_client_authentication_sasl_iam/serverless_cluster_client_authentication_sasl_iam.dart';

class ServerlessClusterClientAuthenticationSasl {
  /// Details for client authentication using IAM. See below.
  final ServerlessClusterClientAuthenticationSaslIam iam;

  ServerlessClusterClientAuthenticationSasl({
    required this.iam,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iam'] = iam.toMap();
    return map;
  }

  factory ServerlessClusterClientAuthenticationSasl.fromMap(
      Map<String, dynamic> map) {
    return ServerlessClusterClientAuthenticationSasl(
      iam: ServerlessClusterClientAuthenticationSaslIam.fromMap(
          (map['iam'] as Map).cast<String, dynamic>()),
    );
  }
}
