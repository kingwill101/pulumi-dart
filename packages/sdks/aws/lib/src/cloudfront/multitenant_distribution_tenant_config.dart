// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_tenant_config_parameter_definition.dart';

class MultitenantDistributionTenantConfig {
  /// One or more parameter definitions for the tenant configuration. See Parameter Definition below.
  final pulumi.Input<List<MultitenantDistributionTenantConfigParameterDefinition>>? parameterDefinitions;

  /// Creates a new [MultitenantDistributionTenantConfig].
  /// [parameterDefinitions] One or more parameter definitions for the tenant configuration. See Parameter Definition below.
  MultitenantDistributionTenantConfig({
    this.parameterDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterDefinitions': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionTenantConfigParameterDefinition>, List<Map<String, dynamic>>>(parameterDefinitions, (value) => pulumi.Input.encodeList<MultitenantDistributionTenantConfigParameterDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MultitenantDistributionTenantConfig.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfig(
      parameterDefinitions: (() { final guardedValue = map['parameterDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionTenantConfigParameterDefinition>(guardedValue, (value) => MultitenantDistributionTenantConfigParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

