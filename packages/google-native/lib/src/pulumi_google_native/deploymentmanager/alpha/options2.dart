// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'async_options.dart';
import 'input_mapping.dart';
import 'validation_options.dart';

/// Options allows customized resource handling by Deployment Manager.
class Options2 {
  /// Options regarding how to thread async requests.
  final List<AsyncOptions>? asyncOptions;

  /// The mappings that apply for requests.
  final List<InputMapping>? inputMappings;

  /// The json path to the field in the resource JSON body into which the resource name should be mapped. Leaving this empty indicates that there should be no mapping performed.
  final String? nameProperty;

  /// Options for how to validate and process properties on a resource.
  final ValidationOptions? validationOptions;

  Options2({
    this.asyncOptions,
    this.inputMappings,
    this.nameProperty,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asyncOptionsValue = asyncOptions;
    if (asyncOptionsValue != null) {
      map['asyncOptions'] =
          Input.encodeList<AsyncOptions, Map<String, dynamic>>(
              asyncOptionsValue, (value) => value.toMap());
    }
    final inputMappingsValue = inputMappings;
    if (inputMappingsValue != null) {
      map['inputMappings'] =
          Input.encodeList<InputMapping, Map<String, dynamic>>(
              inputMappingsValue, (value) => value.toMap());
    }
    final namePropertyValue = nameProperty;
    if (namePropertyValue != null) {
      map['nameProperty'] = namePropertyValue;
    }
    final validationOptionsValue = validationOptions;
    if (validationOptionsValue != null) {
      map['validationOptions'] = validationOptionsValue.toMap();
    }
    return map;
  }

  factory Options2.fromMap(Map<String, dynamic> map) {
    return Options2(
      asyncOptions: map['asyncOptions'] == null
          ? null
          : Input.decodeList<AsyncOptions>(
              map['asyncOptions'],
              (value) =>
                  AsyncOptions.fromMap((value as Map).cast<String, dynamic>())),
      inputMappings: map['inputMappings'] == null
          ? null
          : Input.decodeList<InputMapping>(
              map['inputMappings'],
              (value) =>
                  InputMapping.fromMap((value as Map).cast<String, dynamic>())),
      nameProperty:
          map['nameProperty'] == null ? null : map['nameProperty'] as String,
      validationOptions: map['validationOptions'] == null
          ? null
          : ValidationOptions.fromMap(
              (map['validationOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
