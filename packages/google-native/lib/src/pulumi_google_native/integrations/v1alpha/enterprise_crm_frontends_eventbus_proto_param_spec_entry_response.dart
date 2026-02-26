// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_param_spec_entry_config_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_proto_definition_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type_response.dart';

/// Key-value pair of EventBus task parameters. Next id: 13
class EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse {
  /// The FQCN of the Java object this represents. A string, for example, would be "java.lang.String". If this is "java.lang.Object", the parameter can be of any type.
  final String className;

  /// If it is a collection of objects, this would be the FCQN of every individual element in the collection. If this is "java.lang.Object", the parameter is a collection of any type.
  final String collectionElementClassName;

  /// Optional fields, such as help text and other useful info.
  final EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse config;

  /// The data type of the parameter.
  final String dataType;

  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse
      defaultValue;

  /// If set, this entry is deprecated, so further use of this parameter should be prohibited.
  final bool isDeprecated;
  final bool isOutput;

  /// If the data_type is JSON_VALUE, then this will define its schema.
  final String jsonSchema;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given task. These parameters must be predefined in the workflow definition.
  final String key;

  /// Populated if this represents a proto or proto array.
  final EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse
      protoDef;

  /// If set, the user must provide an input value for this parameter.
  final bool required;

  /// Rule used to validate inputs (individual values and collection elements) for this parameter.
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse
      validationRule;

  EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse({
    required this.className,
    required this.collectionElementClassName,
    required this.config,
    required this.dataType,
    required this.defaultValue,
    required this.isDeprecated,
    required this.isOutput,
    required this.jsonSchema,
    required this.key,
    required this.protoDef,
    required this.required,
    required this.validationRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['className'] = className;
    map['collectionElementClassName'] = collectionElementClassName;
    map['config'] = config.toMap();
    map['dataType'] = dataType;
    map['defaultValue'] = defaultValue.toMap();
    map['isDeprecated'] = isDeprecated;
    map['isOutput'] = isOutput;
    map['jsonSchema'] = jsonSchema;
    map['key'] = key;
    map['protoDef'] = protoDef.toMap();
    map['required'] = required;
    map['validationRule'] = validationRule.toMap();
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse(
      className: map['className'] as String,
      collectionElementClassName: map['collectionElementClassName'] as String,
      config: EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      dataType: map['dataType'] as String,
      defaultValue:
          EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      isDeprecated: map['isDeprecated'] as bool,
      isOutput: map['isOutput'] as bool,
      jsonSchema: map['jsonSchema'] as String,
      key: map['key'] as String,
      protoDef: EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse
          .fromMap((map['protoDef'] as Map).cast<String, dynamic>()),
      required: map['required'] as bool,
      validationRule:
          EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse
              .fromMap((map['validationRule'] as Map).cast<String, dynamic>()),
    );
  }
}
