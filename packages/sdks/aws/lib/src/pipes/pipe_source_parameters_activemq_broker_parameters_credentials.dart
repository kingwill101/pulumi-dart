// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersActivemqBrokerParametersCredentials {
  /// ARN of the Secrets Manager secret containing the credentials.
  final pulumi.Input<String> basicAuth;

  /// Creates a new [PipeSourceParametersActivemqBrokerParametersCredentials].
  /// [basicAuth] ARN of the Secrets Manager secret containing the credentials.
  const PipeSourceParametersActivemqBrokerParametersCredentials({
    required this.basicAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': basicAuth,
    };
  }

  factory PipeSourceParametersActivemqBrokerParametersCredentials.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersActivemqBrokerParametersCredentials(
      basicAuth: pulumi.Input.fromValue(map['basicAuth'] as String),
    );
  }
}
