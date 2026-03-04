// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_tenant_config_parameter_definition_definition_string_schema.dart';

class MultitenantDistributionTenantConfigParameterDefinitionDefinition {
  /// String schema configuration. See String Schema below.
  final pulumi.Input<
    List<
      MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema
    >
  >?
  stringSchemas;

  /// Creates a new [MultitenantDistributionTenantConfigParameterDefinitionDefinition].
  /// [stringSchemas] String schema configuration. See String Schema below.
  MultitenantDistributionTenantConfigParameterDefinitionDefinition({
    this.stringSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringSchemas':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema
            >,
            List<Map<String, dynamic>>
          >(
            stringSchemas,
            (value) =>
                pulumi.Input.encodeList<
                  MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory MultitenantDistributionTenantConfigParameterDefinitionDefinition.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionTenantConfigParameterDefinitionDefinition(
      stringSchemas: (() {
        final guardedValue = map['stringSchemas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema
          >(
            guardedValue,
            (value) =>
                MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
