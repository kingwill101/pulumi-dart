// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway autoscale configuration.
class ApplicationGatewayAutoscaleConfiguration {
  /// Upper bound on number of Application Gateway capacity.
  final pulumi.Input<int>? maxCapacity;

  /// Lower bound on number of Application Gateway capacity.
  final pulumi.Input<int> minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfiguration].
  /// [maxCapacity] Upper bound on number of Application Gateway capacity.
  /// [minCapacity] Lower bound on number of Application Gateway capacity.
  ApplicationGatewayAutoscaleConfiguration({
    this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ApplicationGatewayAutoscaleConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayAutoscaleConfiguration(
      maxCapacity: (() {
        final guardedValue = map['maxCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as int),
    );
  }
}
