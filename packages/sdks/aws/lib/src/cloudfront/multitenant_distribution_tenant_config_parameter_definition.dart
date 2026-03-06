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
  const MultitenantDistributionTenantConfigParameterDefinition({
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
      definitions: (() { final guardedValue = map['definitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionTenantConfigParameterDefinitionDefinition>(guardedValue, (value) => MultitenantDistributionTenantConfigParameterDefinitionDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

