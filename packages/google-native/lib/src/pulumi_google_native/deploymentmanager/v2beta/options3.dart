// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'async_options2.dart';
import 'input_mapping2.dart';
import 'validation_options2.dart';

/// Options allows customized resource handling by Deployment Manager.
class Options3 {
  /// Options regarding how to thread async requests.
  final List<AsyncOptions2>? asyncOptions;

  /// The mappings that apply for requests.
  final List<InputMapping2>? inputMappings;

  /// Options for how to validate and process properties on a resource.
  final ValidationOptions2? validationOptions;

  /// Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  final String? virtualProperties;

  Options3({
    this.asyncOptions,
    this.inputMappings,
    this.validationOptions,
    this.virtualProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asyncOptionsValue = asyncOptions;
    if (asyncOptionsValue != null) {
      map['asyncOptions'] =
          Input.encodeList<AsyncOptions2, Map<String, dynamic>>(
              asyncOptionsValue, (value) => value.toMap());
    }
    final inputMappingsValue = inputMappings;
    if (inputMappingsValue != null) {
      map['inputMappings'] =
          Input.encodeList<InputMapping2, Map<String, dynamic>>(
              inputMappingsValue, (value) => value.toMap());
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

  factory Options3.fromMap(Map<String, dynamic> map) {
    return Options3(
      asyncOptions: map['asyncOptions'] == null
          ? null
          : Input.decodeList<AsyncOptions2>(
              map['asyncOptions'],
              (value) => AsyncOptions2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputMappings: map['inputMappings'] == null
          ? null
          : Input.decodeList<InputMapping2>(
              map['inputMappings'],
              (value) => InputMapping2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      validationOptions: map['validationOptions'] == null
          ? null
          : ValidationOptions2.fromMap(
              (map['validationOptions'] as Map).cast<String, dynamic>()),
      virtualProperties: map['virtualProperties'] == null
          ? null
          : map['virtualProperties'] as String,
    );
  }
}
