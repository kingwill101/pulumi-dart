// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServicePrimaryContainerAwsLogsConfiguration {
  /// CloudWatch log group name.
  final pulumi.Input<String> logGroup;
  /// Prefix for log stream names. If not specified, a default prefix will be used.
  final pulumi.Input<String> logStreamPrefix;

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
      logGroup: pulumi.Input.fromValue(map['logGroup'] as String),
      logStreamPrefix: pulumi.Input.fromValue(map['logStreamPrefix'] as String),
    );
  }
}

