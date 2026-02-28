// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_param_spec_entry_config.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_proto_definition.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule.dart';
import 'enterprise_crm_frontends_eventbus_proto_param_spec_entry_data_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type.dart';

/// Key-value pair of EventBus task parameters. Next id: 13
class EnterpriseCrmFrontendsEventbusProtoParamSpecEntry {
  /// The FQCN of the Java object this represents. A string, for example, would be "java.lang.String". If this is "java.lang.Object", the parameter can be of any type.
  final String? className;

  /// If it is a collection of objects, this would be the FCQN of every individual element in the collection. If this is "java.lang.Object", the parameter is a collection of any type.
  final String? collectionElementClassName;

  /// Optional fields, such as help text and other useful info.
  final EnterpriseCrmEventbusProtoParamSpecEntryConfig? config;

  /// The data type of the parameter.
  final EnterpriseCrmFrontendsEventbusProtoParamSpecEntryDataType? dataType;

  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final EnterpriseCrmFrontendsEventbusProtoParameterValueType? defaultValue;

  /// If set, this entry is deprecated, so further use of this parameter should be prohibited.
  final bool? isDeprecated;
  final bool? isOutput;

  /// If the data_type is JSON_VALUE, then this will define its schema.
  final String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given task. These parameters must be predefined in the workflow definition.
  final String? key;

  /// Populated if this represents a proto or proto array.
  final EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition? protoDef;

  /// If set, the user must provide an input value for this parameter.
  final bool? required;

  /// Rule used to validate inputs (individual values and collection elements) for this parameter.
  final EnterpriseCrmEventbusProtoParamSpecEntryValidationRule? validationRule;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParamSpecEntry].
  /// [className] The FQCN of the Java object this represents. A string, for example, would be "java.lang.String". If this is "java.lang.Object", the parameter can be of any type.
  /// [collectionElementClassName] If it is a collection of objects, this would be the FCQN of every individual element in the collection. If this is "java.lang.Object", the parameter is a collection of any type.
  /// [config] Optional fields, such as help text and other useful info.
  /// [dataType] The data type of the parameter.
  /// [defaultValue] Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  /// [isDeprecated] If set, this entry is deprecated, so further use of this parameter should be prohibited.
  /// [isOutput] Optional.
  /// [jsonSchema] If the data_type is JSON_VALUE, then this will define its schema.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given task. These parameters must be predefined in the workflow definition.
  /// [protoDef] Populated if this represents a proto or proto array.
  /// [required] If set, the user must provide an input value for this parameter.
  /// [validationRule] Rule used to validate inputs (individual values and collection elements) for this parameter.
  EnterpriseCrmFrontendsEventbusProtoParamSpecEntry({
    this.className,
    this.collectionElementClassName,
    this.config,
    this.dataType,
    this.defaultValue,
    this.isDeprecated,
    this.isOutput,
    this.jsonSchema,
    this.key,
    this.protoDef,
    this.required,
    this.validationRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classNameValue = className;
    if (classNameValue != null) {
      map['className'] = classNameValue;
    }
    final collectionElementClassNameValue = collectionElementClassName;
    if (collectionElementClassNameValue != null) {
      map['collectionElementClassName'] = collectionElementClassNameValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue.toMap();
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue.value;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue.toMap();
    }
    final isDeprecatedValue = isDeprecated;
    if (isDeprecatedValue != null) {
      map['isDeprecated'] = isDeprecatedValue;
    }
    final isOutputValue = isOutput;
    if (isOutputValue != null) {
      map['isOutput'] = isOutputValue;
    }
    final jsonSchemaValue = jsonSchema;
    if (jsonSchemaValue != null) {
      map['jsonSchema'] = jsonSchemaValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final protoDefValue = protoDef;
    if (protoDefValue != null) {
      map['protoDef'] = protoDefValue.toMap();
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    final validationRuleValue = validationRule;
    if (validationRuleValue != null) {
      map['validationRule'] = validationRuleValue.toMap();
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecEntry(
      className: map['className'] == null ? null : map['className'] as String,
      collectionElementClassName: map['collectionElementClassName'] == null
          ? null
          : map['collectionElementClassName'] as String,
      config: map['config'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      dataType: map['dataType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoParamSpecEntryDataType.fromValue(
              map['dataType'] as String),
      defaultValue: map['defaultValue'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      isDeprecated:
          map['isDeprecated'] == null ? null : map['isDeprecated'] as bool,
      isOutput: map['isOutput'] == null ? null : map['isOutput'] as bool,
      jsonSchema:
          map['jsonSchema'] == null ? null : map['jsonSchema'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      protoDef: map['protoDef'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition.fromMap(
              (map['protoDef'] as Map).cast<String, dynamic>()),
      required: map['required'] == null ? null : map['required'] as bool,
      validationRule: map['validationRule'] == null
          ? null
          : EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromMap(
              (map['validationRule'] as Map).cast<String, dynamic>()),
    );
  }
}
