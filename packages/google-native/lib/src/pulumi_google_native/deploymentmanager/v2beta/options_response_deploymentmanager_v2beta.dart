// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options_response_deploymentmanager_v2beta.dart';
import 'input_mapping_response_deploymentmanager_v2beta.dart';
import 'validation_options_response_deploymentmanager_v2beta.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsResponseDeploymentmanagerV2beta {
  /// Options regarding how to thread async requests.
  final List<AsyncOptionsResponseDeploymentmanagerV2beta> asyncOptions;

  /// The mappings that apply for requests.
  final List<InputMappingResponseDeploymentmanagerV2beta> inputMappings;

  /// Options for how to validate and process properties on a resource.
  final ValidationOptionsResponseDeploymentmanagerV2beta validationOptions;

  /// Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  final String virtualProperties;

  OptionsResponseDeploymentmanagerV2beta({
    required this.asyncOptions,
    required this.inputMappings,
    required this.validationOptions,
    required this.virtualProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asyncOptions'] = pulumi.Input.encodeList<
        AsyncOptionsResponseDeploymentmanagerV2beta,
        Map<String, dynamic>>(asyncOptions, (value) => value.toMap());
    map['inputMappings'] = pulumi.Input.encodeList<
        InputMappingResponseDeploymentmanagerV2beta,
        Map<String, dynamic>>(inputMappings, (value) => value.toMap());
    map['validationOptions'] = validationOptions.toMap();
    map['virtualProperties'] = virtualProperties;
    return map;
  }

  factory OptionsResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return OptionsResponseDeploymentmanagerV2beta(
      asyncOptions:
          pulumi.Input.decodeList<AsyncOptionsResponseDeploymentmanagerV2beta>(
              map['asyncOptions'],
              (value) => AsyncOptionsResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputMappings:
          pulumi.Input.decodeList<InputMappingResponseDeploymentmanagerV2beta>(
              map['inputMappings'],
              (value) => InputMappingResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      validationOptions:
          ValidationOptionsResponseDeploymentmanagerV2beta.fromMap(
              (map['validationOptions'] as Map).cast<String, dynamic>()),
      virtualProperties: map['virtualProperties'] as String,
    );
  }
}
