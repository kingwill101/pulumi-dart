// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway autoscale configuration.
class ApplicationGatewayAutoscaleConfigurationResponse {
  /// Upper bound on number of Application Gateway capacity.
  final pulumi.Input<int>? maxCapacity;
  /// Lower bound on number of Application Gateway capacity.
  final pulumi.Input<int> minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfigurationResponse].
  /// [maxCapacity] Upper bound on number of Application Gateway capacity.
  /// [minCapacity] Lower bound on number of Application Gateway capacity.
  const ApplicationGatewayAutoscaleConfigurationResponse({
    this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ApplicationGatewayAutoscaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAutoscaleConfigurationResponse(
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as int),
    );
  }
}
