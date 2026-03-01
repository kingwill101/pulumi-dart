// ignore_for_file: unused_element, unnecessary_cast


class ExpressGatewayServicePrimaryContainerAwsLogsConfiguration {
  /// CloudWatch log group name.
  final String logGroup;
  /// Prefix for log stream names. If not specified, a default prefix will be used.
  final String logStreamPrefix;

  /// Creates a new [ExpressGatewayServicePrimaryContainerAwsLogsConfiguration].
  /// [logGroup] CloudWatch log group name.
  /// [logStreamPrefix] Prefix for log stream names. If not specified, a default prefix will be used.
  ExpressGatewayServicePrimaryContainerAwsLogsConfiguration({
    required this.logGroup,
    required this.logStreamPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroup': logGroup,
      'logStreamPrefix': logStreamPrefix,
    };
  }

  factory ExpressGatewayServicePrimaryContainerAwsLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerAwsLogsConfiguration(
      logGroup: map['logGroup'] as String,
      logStreamPrefix: map['logStreamPrefix'] as String,
    );
  }
}

