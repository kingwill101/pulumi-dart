// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceCapacityProvider {
  /// Number of desired tasks allocated here before weights are applied. Only one provider may
  /// specify a positive base. Does not increase desiredCount or guarantee healthy capacity.
  ///
  /// Default - 0.
  final pulumi.Input<double?>? base;
  /// ARN of an existing Managed Instances or ASG-backed capacity provider associated with this
  /// cluster. The provider must be usable in the cluster, with host networking that supports image
  /// pulls, secrets, and logs.
  final pulumi.Input<String> capacityProviderArn;
  /// Relative share of tasks remaining after the base. Zero allocates only the base tasks. At least
  /// one selected provider must have a positive weight. Order does not imply priority.
  ///
  /// Default - 1.
  final pulumi.Input<double?>? weight;

  /// Creates a new [ServiceCapacityProvider].
  /// [base] Number of desired tasks allocated here before weights are applied. Only one provider may
  /// [capacityProviderArn] ARN of an existing Managed Instances or ASG-backed capacity provider associated with this
  /// [weight] Relative share of tasks remaining after the base. Zero allocates only the base tasks. At least
  const ServiceCapacityProvider({
    this.base,
    required this.capacityProviderArn,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base,
      'capacityProviderArn': capacityProviderArn,
      'weight': ?weight,
    };
  }

  factory ServiceCapacityProvider.fromMap(Map<String, dynamic> map) {
    return ServiceCapacityProvider(
      base: (() { final guardedValue = map['base']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      capacityProviderArn: pulumi.Input.fromValue(map['capacityProviderArn'] as String),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
