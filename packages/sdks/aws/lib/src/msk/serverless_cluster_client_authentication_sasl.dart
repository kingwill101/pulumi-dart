// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cluster_client_authentication_sasl_iam.dart';

class ServerlessClusterClientAuthenticationSasl {
  /// Details for client authentication using IAM. See below.
  final pulumi.Input<ServerlessClusterClientAuthenticationSaslIam> iam;

  /// Creates a new [ServerlessClusterClientAuthenticationSasl].
  /// [iam] Details for client authentication using IAM. See below.
  const ServerlessClusterClientAuthenticationSasl({
    required this.iam,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iam': pulumi.Input.mapInputValue<ServerlessClusterClientAuthenticationSaslIam, Map<String, dynamic>>(iam, (value) => value.toMap()),
    };
  }

  factory ServerlessClusterClientAuthenticationSasl.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterClientAuthenticationSasl(
      iam: pulumi.Input.fromValue(ServerlessClusterClientAuthenticationSaslIam.fromMap((map['iam']! as Map).cast<String, dynamic>())),
    );
  }
}
