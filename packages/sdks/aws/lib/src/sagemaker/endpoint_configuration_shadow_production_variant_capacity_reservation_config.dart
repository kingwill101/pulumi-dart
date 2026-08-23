// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationShadowProductionVariantCapacityReservationConfig {
  /// Capacity reservation preference. Valid value is `capacity-reservations-only`. When set to `capacity-reservations-only`, SageMaker AI launches instances only into an ML capacity reservation; if no capacity is available, the instances fail to launch.
  final pulumi.Input<String>? capacityReservationPreference;
  /// The Amazon Resource Name (ARN) that uniquely identifies the ML capacity reservation that SageMaker AI applies when it deploys the endpoint.
  final pulumi.Input<String>? mlReservationArn;

  /// Creates a new [EndpointConfigurationShadowProductionVariantCapacityReservationConfig].
  /// [capacityReservationPreference] Capacity reservation preference. Valid value is `capacity-reservations-only`. When set to `capacity-reservations-only`, SageMaker AI launches instances only into an ML capacity reservation; if no capacity is available, the instances fail to launch.
  /// [mlReservationArn] The Amazon Resource Name (ARN) that uniquely identifies the ML capacity reservation that SageMaker AI applies when it deploys the endpoint.
  const EndpointConfigurationShadowProductionVariantCapacityReservationConfig({
    this.capacityReservationPreference,
    this.mlReservationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?capacityReservationPreference,
      'mlReservationArn': ?mlReservationArn,
    };
  }

  factory EndpointConfigurationShadowProductionVariantCapacityReservationConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationShadowProductionVariantCapacityReservationConfig(
      capacityReservationPreference: (() { final guardedValue = map['capacityReservationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mlReservationArn: (() { final guardedValue = map['mlReservationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
