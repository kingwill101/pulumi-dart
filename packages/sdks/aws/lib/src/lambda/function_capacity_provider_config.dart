// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_capacity_provider_config_lambda_managed_instances_capacity_provider_config.dart';

class FunctionCapacityProviderConfig {
  /// Configuration block for Lambda Managed Instances Capacity Provider. See below.
  final pulumi.Input<
    FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig
  >
  lambdaManagedInstancesCapacityProviderConfig;

  /// Creates a new [FunctionCapacityProviderConfig].
  /// [lambdaManagedInstancesCapacityProviderConfig] Configuration block for Lambda Managed Instances Capacity Provider. See below.
  FunctionCapacityProviderConfig({
    required this.lambdaManagedInstancesCapacityProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaManagedInstancesCapacityProviderConfig':
          pulumi.Input.mapInputValue<
            FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig,
            Map<String, dynamic>
          >(
            lambdaManagedInstancesCapacityProviderConfig,
            (value) => value.toMap(),
          ),
    };
  }

  factory FunctionCapacityProviderConfig.fromMap(Map<String, dynamic> map) {
    return FunctionCapacityProviderConfig(
      lambdaManagedInstancesCapacityProviderConfig: pulumi.Input.fromValue(
        FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig.fromMap(
          (map['lambdaManagedInstancesCapacityProviderConfig']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
