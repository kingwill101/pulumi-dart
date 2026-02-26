// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_function_capacity_provider_config_lambda_managed_instances_capacity_provider_config/get_function_capacity_provider_config_lambda_managed_instances_capacity_provider_config.dart';

class GetFunctionCapacityProviderConfig {
  /// Configuration block for Lambda Managed Instances Capacity Provider.
  final List<
          GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig>
      lambdaManagedInstancesCapacityProviderConfigs;

  GetFunctionCapacityProviderConfig({
    required this.lambdaManagedInstancesCapacityProviderConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaManagedInstancesCapacityProviderConfigs'] = Input.encodeList<
            GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig,
            Map<String, dynamic>>(lambdaManagedInstancesCapacityProviderConfigs,
        (value) => value.toMap());
    return map;
  }

  factory GetFunctionCapacityProviderConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionCapacityProviderConfig(
      lambdaManagedInstancesCapacityProviderConfigs: Input.decodeList<
              GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig>(
          map['lambdaManagedInstancesCapacityProviderConfigs'],
          (value) =>
              GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
