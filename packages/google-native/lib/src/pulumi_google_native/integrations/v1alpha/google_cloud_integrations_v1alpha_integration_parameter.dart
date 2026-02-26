// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_integration_parameter_data_type.dart';
import 'google_cloud_integrations_v1alpha_integration_parameter_input_output_type.dart';
import 'google_cloud_integrations_v1alpha_value_type.dart';

/// Integration Parameter is defined in the integration config and are used to provide information about data types of the expected parameters and provide any default values if needed. They can also be used to add custom attributes. These are static in nature and should not be used for dynamic event definition.
class GoogleCloudIntegrationsV1alphaIntegrationParameter {
  /// Type of the parameter.
  final GoogleCloudIntegrationsV1alphaIntegrationParameterDataType? dataType;

  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final GoogleCloudIntegrationsV1alphaValueType? defaultValue;

  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final String? displayName;

  /// Specifies the input/output type for the parameter.
  final GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType?
      inputOutputType;

  /// Whether this parameter is a transient parameter.
  final bool? isTransient;

  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final String? key;

  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final String? producer;

  /// Searchable in the execution log or not.
  final bool? searchable;

  GoogleCloudIntegrationsV1alphaIntegrationParameter({
    this.dataType,
    this.defaultValue,
    this.displayName,
    this.inputOutputType,
    this.isTransient,
    this.jsonSchema,
    this.key,
    this.producer,
    this.searchable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue.value;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue.toMap();
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inputOutputTypeValue = inputOutputType;
    if (inputOutputTypeValue != null) {
      map['inputOutputType'] = inputOutputTypeValue.value;
    }
    final isTransientValue = isTransient;
    if (isTransientValue != null) {
      map['isTransient'] = isTransientValue;
    }
    final jsonSchemaValue = jsonSchema;
    if (jsonSchemaValue != null) {
      map['jsonSchema'] = jsonSchemaValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final producerValue = producer;
    if (producerValue != null) {
      map['producer'] = producerValue;
    }
    final searchableValue = searchable;
    if (searchableValue != null) {
      map['searchable'] = searchableValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationParameter.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationParameter(
      dataType: map['dataType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntegrationParameterDataType
              .fromValue(map['dataType'] as String),
      defaultValue: map['defaultValue'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaValueType.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      inputOutputType: map['inputOutputType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType
              .fromValue(map['inputOutputType'] as String),
      isTransient:
          map['isTransient'] == null ? null : map['isTransient'] as bool,
      jsonSchema:
          map['jsonSchema'] == null ? null : map['jsonSchema'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      producer: map['producer'] == null ? null : map['producer'] as String,
      searchable: map['searchable'] == null ? null : map['searchable'] as bool,
    );
  }
}
