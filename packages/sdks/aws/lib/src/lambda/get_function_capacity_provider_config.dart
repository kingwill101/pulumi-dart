// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_capacity_provider_config_lambda_managed_instances_capacity_provider_config.dart';

class GetFunctionCapacityProviderConfig {
  /// Configuration block for Lambda Managed Instances Capacity Provider.
  final pulumi.Input<List<GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig>> lambdaManagedInstancesCapacityProviderConfigs;

  /// Creates a new [GetFunctionCapacityProviderConfig].
  /// [lambdaManagedInstancesCapacityProviderConfigs] Configuration block for Lambda Managed Instances Capacity Provider.
  GetFunctionCapacityProviderConfig({
    required this.lambdaManagedInstancesCapacityProviderConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaManagedInstancesCapacityProviderConfigs': pulumi.Input.mapInputValue<List<GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig>, List<Map<String, dynamic>>>(lambdaManagedInstancesCapacityProviderConfigs, (value) => pulumi.Input.encodeList<GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFunctionCapacityProviderConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionCapacityProviderConfig(
      lambdaManagedInstancesCapacityProviderConfigs: (pulumi.Input.decodeList<GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig>(map['lambdaManagedInstancesCapacityProviderConfigs']!, (value) => GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

