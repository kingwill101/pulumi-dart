// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersRabbitmqBrokerParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String basicAuth;

  PipeSourceParametersRabbitmqBrokerParametersCredentials({
    required this.basicAuth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicAuth'] = basicAuth;
    return map;
  }

  factory PipeSourceParametersRabbitmqBrokerParametersCredentials.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersRabbitmqBrokerParametersCredentials(
      basicAuth: map['basicAuth'] as String,
    );
  }
}
