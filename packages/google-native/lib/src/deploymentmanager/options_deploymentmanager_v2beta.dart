// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options_deploymentmanager_v2beta.dart';
import 'input_mapping_deploymentmanager_v2beta.dart';
import 'validation_options_deploymentmanager_v2beta.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsDeploymentmanagerV2beta {
  /// Options regarding how to thread async requests.
  final List<AsyncOptionsDeploymentmanagerV2beta>? asyncOptions;

  /// The mappings that apply for requests.
  final List<InputMappingDeploymentmanagerV2beta>? inputMappings;

  /// Options for how to validate and process properties on a resource.
  final ValidationOptionsDeploymentmanagerV2beta? validationOptions;

  /// Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  final String? virtualProperties;

  /// Creates a new [OptionsDeploymentmanagerV2beta].
  /// [asyncOptions] Options regarding how to thread async requests.
  /// [inputMappings] The mappings that apply for requests.
  /// [validationOptions] Options for how to validate and process properties on a resource.
  /// [virtualProperties] Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  OptionsDeploymentmanagerV2beta({
    this.asyncOptions,
    this.inputMappings,
    this.validationOptions,
    this.virtualProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asyncOptionsValue = asyncOptions;
    if (asyncOptionsValue != null) {
      map['asyncOptions'] = pulumi.Input.encodeList<
          AsyncOptionsDeploymentmanagerV2beta,
          Map<String, dynamic>>(asyncOptionsValue, (value) => value.toMap());
    }
    final inputMappingsValue = inputMappings;
    if (inputMappingsValue != null) {
      map['inputMappings'] = pulumi.Input.encodeList<
          InputMappingDeploymentmanagerV2beta,
          Map<String, dynamic>>(inputMappingsValue, (value) => value.toMap());
    }
    final validationOptionsValue = validationOptions;
    if (validationOptionsValue != null) {
      map['validationOptions'] = validationOptionsValue.toMap();
    }
    final virtualPropertiesValue = virtualProperties;
    if (virtualPropertiesValue != null) {
      map['virtualProperties'] = virtualPropertiesValue;
    }
    return map;
  }

  factory OptionsDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return OptionsDeploymentmanagerV2beta(
      asyncOptions: map['asyncOptions'] == null
          ? null
          : pulumi.Input.decodeList<AsyncOptionsDeploymentmanagerV2beta>(
              map['asyncOptions'],
              (value) => AsyncOptionsDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputMappings: map['inputMappings'] == null
          ? null
          : pulumi.Input.decodeList<InputMappingDeploymentmanagerV2beta>(
              map['inputMappings'],
              (value) => InputMappingDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      validationOptions: map['validationOptions'] == null
          ? null
          : ValidationOptionsDeploymentmanagerV2beta.fromMap(
              (map['validationOptions'] as Map).cast<String, dynamic>()),
      virtualProperties: map['virtualProperties'] == null
          ? null
          : map['virtualProperties'] as String,
    );
  }
}
