// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReplicationGroupLogDeliveryConfiguration {
  final pulumi.Input<String> destination;
  final pulumi.Input<String> destinationType;
  final pulumi.Input<String> logFormat;
  final pulumi.Input<String> logType;

  /// Creates a new [GetReplicationGroupLogDeliveryConfiguration].
  /// [destination] Required.
  /// [destinationType] Required.
  /// [logFormat] Required.
  /// [logType] Required.
  const GetReplicationGroupLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'destinationType': destinationType,
      'logFormat': logFormat,
      'logType': logType,
    };
  }

  factory GetReplicationGroupLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupLogDeliveryConfiguration(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationType: pulumi.Input.fromValue(map['destinationType'] as String),
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}

