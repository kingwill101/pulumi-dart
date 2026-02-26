// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_tenant_config_parameter_definition_definition_string_schema/multitenant_distribution_tenant_config_parameter_definition_definition_string_schema.dart';

class MultitenantDistributionTenantConfigParameterDefinitionDefinition {
  /// String schema configuration. See String Schema below.
  final List<
          MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema>?
      stringSchemas;

  MultitenantDistributionTenantConfigParameterDefinitionDefinition({
    this.stringSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stringSchemasValue = stringSchemas;
    if (stringSchemasValue != null) {
      map['stringSchemas'] = Input.encodeList<
          MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema,
          Map<String, dynamic>>(stringSchemasValue, (value) => value.toMap());
    }
    return map;
  }

  factory MultitenantDistributionTenantConfigParameterDefinitionDefinition.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfigParameterDefinitionDefinition(
      stringSchemas: map['stringSchemas'] == null
          ? null
          : Input.decodeList<
                  MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema>(
              map['stringSchemas'],
              (value) =>
                  MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
