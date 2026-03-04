// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersCapacityProviderStrategy {
  /// The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. If no value is specified, the default value of 0 is used. Maximum value of 100,000.
  final pulumi.Input<int>? base;

  /// The short name of the capacity provider. Maximum value of 255.
  final pulumi.Input<String> capacityProvider;

  /// The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied. Maximum value of 1,000.
  final pulumi.Input<int>? weight;

  /// Creates a new [PipeTargetParametersEcsTaskParametersCapacityProviderStrategy].
  /// [base] The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. If no value is specified, the default value of 0 is used. Maximum value of 100,000.
  /// [capacityProvider] The short name of the capacity provider. Maximum value of 255.
  /// [weight] The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied. Maximum value of 1,000.
  PipeTargetParametersEcsTaskParametersCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base,
      'capacityProvider': capacityProvider,
      'weight': ?weight,
    };
  }

  factory PipeTargetParametersEcsTaskParametersCapacityProviderStrategy.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersEcsTaskParametersCapacityProviderStrategy(
      base: (() {
        final guardedValue = map['base'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      capacityProvider: pulumi.Input.fromValue(
        map['capacityProvider'] as String,
      ),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
