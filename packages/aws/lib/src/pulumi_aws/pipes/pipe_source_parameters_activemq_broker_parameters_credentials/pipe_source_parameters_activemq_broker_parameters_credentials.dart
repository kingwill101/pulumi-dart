// ignore_for_file: unused_element, unnecessary_cast

class PipeSourceParametersActivemqBrokerParametersCredentials {
  /// The ARN of the Secrets Manager secret containing the credentials.
  final String basicAuth;

  PipeSourceParametersActivemqBrokerParametersCredentials({
    required this.basicAuth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicAuth'] = basicAuth;
    return map;
  }

  factory PipeSourceParametersActivemqBrokerParametersCredentials.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersActivemqBrokerParametersCredentials(
      basicAuth: map['basicAuth'] as String,
    );
  }
}
