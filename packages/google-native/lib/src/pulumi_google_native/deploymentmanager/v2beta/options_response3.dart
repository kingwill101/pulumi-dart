// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'async_options_response2.dart';
import 'input_mapping_response2.dart';
import 'validation_options_response2.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsResponse3 {
  /// Options regarding how to thread async requests.
  final List<AsyncOptionsResponse2> asyncOptions;

  /// The mappings that apply for requests.
  final List<InputMappingResponse2> inputMappings;

  /// Options for how to validate and process properties on a resource.
  final ValidationOptionsResponse2 validationOptions;

  /// Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  final String virtualProperties;

  OptionsResponse3({
    required this.asyncOptions,
    required this.inputMappings,
    required this.validationOptions,
    required this.virtualProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asyncOptions'] =
        Input.encodeList<AsyncOptionsResponse2, Map<String, dynamic>>(
            asyncOptions, (value) => value.toMap());
    map['inputMappings'] =
        Input.encodeList<InputMappingResponse2, Map<String, dynamic>>(
            inputMappings, (value) => value.toMap());
    map['validationOptions'] = validationOptions.toMap();
    map['virtualProperties'] = virtualProperties;
    return map;
  }

  factory OptionsResponse3.fromMap(Map<String, dynamic> map) {
    return OptionsResponse3(
      asyncOptions: Input.decodeList<AsyncOptionsResponse2>(
          map['asyncOptions'],
          (value) => AsyncOptionsResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      inputMappings: Input.decodeList<InputMappingResponse2>(
          map['inputMappings'],
          (value) => InputMappingResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      validationOptions: ValidationOptionsResponse2.fromMap(
          (map['validationOptions'] as Map).cast<String, dynamic>()),
      virtualProperties: map['virtualProperties'] as String,
    );
  }
}
