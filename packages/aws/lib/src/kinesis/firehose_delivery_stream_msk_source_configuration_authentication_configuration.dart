// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration {
  /// The type of connectivity used to access the Amazon MSK cluster. Valid values: `PUBLIC`, `PRIVATE`.
  final String connectivity;

  /// The ARN of the role used to access the Amazon MSK cluster.
  final String roleArn;

  /// Creates a new [FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration].
  /// [connectivity] The type of connectivity used to access the Amazon MSK cluster. Valid values: `PUBLIC`, `PRIVATE`.
  /// [roleArn] The ARN of the role used to access the Amazon MSK cluster.
  FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration({
    required this.connectivity,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'connectivity': connectivity, 'roleArn': roleArn};
  }

  factory FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration(
      connectivity: map['connectivity'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
