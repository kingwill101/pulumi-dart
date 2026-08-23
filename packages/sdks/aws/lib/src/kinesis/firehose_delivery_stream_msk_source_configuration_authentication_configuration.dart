// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration {
  /// The type of connectivity used to access the Amazon MSK cluster. Valid values: `PUBLIC`, `PRIVATE`.
  final pulumi.Input<String> connectivity;
  /// The ARN of the role used to access the Amazon MSK cluster.
  final pulumi.Input<String> roleArn;

  /// Creates a new [FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration].
  /// [connectivity] The type of connectivity used to access the Amazon MSK cluster. Valid values: `PUBLIC`, `PRIVATE`.
  /// [roleArn] The ARN of the role used to access the Amazon MSK cluster.
  const FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration({
    required this.connectivity,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivity': connectivity,
      'roleArn': roleArn,
    };
  }

  factory FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration(
      connectivity: pulumi.Input.fromValue(map['connectivity'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
