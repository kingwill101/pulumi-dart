// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_tenant_config_parameter_definition_definition/multitenant_distribution_tenant_config_parameter_definition_definition.dart';

class MultitenantDistributionTenantConfigParameterDefinition {
  /// Definition of the parameter schema. See Parameter Definition Schema below.
  final List<MultitenantDistributionTenantConfigParameterDefinitionDefinition>?
      definitions;

  /// Name of the parameter.
  final String name;

  MultitenantDistributionTenantConfigParameterDefinition({
    this.definitions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final definitionsValue = definitions;
    if (definitionsValue != null) {
      map['definitions'] = Input.encodeList<
          MultitenantDistributionTenantConfigParameterDefinitionDefinition,
          Map<String, dynamic>>(definitionsValue, (value) => value.toMap());
    }
    map['name'] = name;
    return map;
  }

  factory MultitenantDistributionTenantConfigParameterDefinition.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfigParameterDefinition(
      definitions: map['definitions'] == null
          ? null
          : Input.decodeList<
                  MultitenantDistributionTenantConfigParameterDefinitionDefinition>(
              map['definitions'],
              (value) =>
                  MultitenantDistributionTenantConfigParameterDefinitionDefinition
                      .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
