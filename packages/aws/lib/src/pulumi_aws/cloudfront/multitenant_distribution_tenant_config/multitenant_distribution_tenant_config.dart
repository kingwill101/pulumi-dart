// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_tenant_config_parameter_definition/multitenant_distribution_tenant_config_parameter_definition.dart';

class MultitenantDistributionTenantConfig {
  /// One or more parameter definitions for the tenant configuration. See Parameter Definition below.
  final List<MultitenantDistributionTenantConfigParameterDefinition>?
      parameterDefinitions;

  MultitenantDistributionTenantConfig({
    this.parameterDefinitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parameterDefinitionsValue = parameterDefinitions;
    if (parameterDefinitionsValue != null) {
      map['parameterDefinitions'] = Input.encodeList<
              MultitenantDistributionTenantConfigParameterDefinition,
              Map<String, dynamic>>(
          parameterDefinitionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MultitenantDistributionTenantConfig.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfig(
      parameterDefinitions: map['parameterDefinitions'] == null
          ? null
          : Input.decodeList<
                  MultitenantDistributionTenantConfigParameterDefinition>(
              map['parameterDefinitions'],
              (value) => MultitenantDistributionTenantConfigParameterDefinition
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
