// ignore_for_file: unused_element, unnecessary_cast


class PipeSourceParametersRabbitmqBrokerParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String basicAuth;

  /// Creates a new [PipeSourceParametersRabbitmqBrokerParametersCredentials].
  /// [basicAuth] The ARN of the Secrets Manager secret containing the credentials.
  PipeSourceParametersRabbitmqBrokerParametersCredentials({
    required this.basicAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': basicAuth,
    };
  }

  factory PipeSourceParametersRabbitmqBrokerParametersCredentials.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersRabbitmqBrokerParametersCredentials(
      basicAuth: map['basicAuth'] as String,
    );
  }
}

