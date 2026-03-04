// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersRabbitmqBrokerParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String> basicAuth;

  /// Creates a new [PipeSourceParametersRabbitmqBrokerParametersCredentials].
  /// [basicAuth] The ARN of the Secrets Manager secret containing the credentials.
  PipeSourceParametersRabbitmqBrokerParametersCredentials({
    required this.basicAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'basicAuth': basicAuth};
  }

  factory PipeSourceParametersRabbitmqBrokerParametersCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeSourceParametersRabbitmqBrokerParametersCredentials(
      basicAuth: pulumi.Input.fromValue(map['basicAuth'] as String),
    );
  }
}
