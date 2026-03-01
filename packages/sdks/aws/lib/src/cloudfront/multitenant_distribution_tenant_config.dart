// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_tenant_config_parameter_definition.dart';

class MultitenantDistributionTenantConfig {
  /// One or more parameter definitions for the tenant configuration. See Parameter Definition below.
  final List<MultitenantDistributionTenantConfigParameterDefinition>? parameterDefinitions;

  /// Creates a new [MultitenantDistributionTenantConfig].
  /// [parameterDefinitions] One or more parameter definitions for the tenant configuration. See Parameter Definition below.
  MultitenantDistributionTenantConfig({
    this.parameterDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterDefinitions': ?parameterDefinitions == null ? null : pulumi.Input.encodeList<MultitenantDistributionTenantConfigParameterDefinition, Map<String, dynamic>>(parameterDefinitions!, (value) => value.toMap()),
    };
  }

  factory MultitenantDistributionTenantConfig.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfig(
      parameterDefinitions: map['parameterDefinitions'] == null ? null : pulumi.Input.decodeList<MultitenantDistributionTenantConfigParameterDefinition>(map['parameterDefinitions'], (value) => MultitenantDistributionTenantConfigParameterDefinition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

