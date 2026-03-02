// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_tenant_config_parameter_definition_definition.dart';

class MultitenantDistributionTenantConfigParameterDefinition {
  /// Definition of the parameter schema. See Parameter Definition Schema below.
  final pulumi.Input<List<MultitenantDistributionTenantConfigParameterDefinitionDefinition>>? definitions;
  /// Name of the parameter.
  final pulumi.Input<String> name;

  /// Creates a new [MultitenantDistributionTenantConfigParameterDefinition].
  /// [definitions] Definition of the parameter schema. See Parameter Definition Schema below.
  /// [name] Name of the parameter.
  MultitenantDistributionTenantConfigParameterDefinition({
    this.definitions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionTenantConfigParameterDefinitionDefinition>, List<Map<String, dynamic>>>(definitions, (value) => pulumi.Input.encodeList<MultitenantDistributionTenantConfigParameterDefinitionDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory MultitenantDistributionTenantConfigParameterDefinition.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfigParameterDefinition(
      definitions: map['definitions'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionTenantConfigParameterDefinitionDefinition>(map['definitions']!, (value) => MultitenantDistributionTenantConfigParameterDefinitionDefinition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

