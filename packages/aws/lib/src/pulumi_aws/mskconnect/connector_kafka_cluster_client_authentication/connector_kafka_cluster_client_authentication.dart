// ignore_for_file: unused_element, unnecessary_cast

class ConnectorKafkaClusterClientAuthentication {
  /// The type of client authentication used to connect to the Apache Kafka cluster. Valid values: `IAM`, `NONE`. A value of `NONE` means that no client authentication is used. The default value is `NONE`.
  final String? authenticationType;

  ConnectorKafkaClusterClientAuthentication({
    this.authenticationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationTypeValue = authenticationType;
    if (authenticationTypeValue != null) {
      map['authenticationType'] = authenticationTypeValue;
    }
    return map;
  }

  factory ConnectorKafkaClusterClientAuthentication.fromMap(
      Map<String, dynamic> map) {
    return ConnectorKafkaClusterClientAuthentication(
      authenticationType: map['authenticationType'] == null
          ? null
          : map['authenticationType'] as String,
    );
  }
}
