// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterLogDeliveryConfiguration {
  final pulumi.Input<String> destination;
  final pulumi.Input<String> destinationType;
  final pulumi.Input<String> logFormat;
  final pulumi.Input<String> logType;

  /// Creates a new [GetClusterLogDeliveryConfiguration].
  /// [destination] Required.
  /// [destinationType] Required.
  /// [logFormat] Required.
  /// [logType] Required.
  GetClusterLogDeliveryConfiguration({
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

  factory GetClusterLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetClusterLogDeliveryConfiguration(
      destination: (map['destination'] as String).input(),
      destinationType: (map['destinationType'] as String).input(),
      logFormat: (map['logFormat'] as String).input(),
      logType: (map['logType'] as String).input(),
    );
  }
}

