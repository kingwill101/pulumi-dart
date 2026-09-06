// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway autoscale configuration.
class ApplicationGatewayAutoscaleConfiguration {
  /// Upper bound on number of Application Gateway capacity.
  final pulumi.Input<int?>? maxCapacity;
  /// Lower bound on number of Application Gateway capacity.
  final pulumi.Input<int> minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfiguration].
  /// [maxCapacity] Upper bound on number of Application Gateway capacity.
  /// [minCapacity] Lower bound on number of Application Gateway capacity.
  const ApplicationGatewayAutoscaleConfiguration({
    this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ApplicationGatewayAutoscaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAutoscaleConfiguration(
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minCapacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minCapacity'])),
    );
  }
}
