// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options_response.dart';
import 'input_mapping_response.dart';
import 'validation_options_response.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsResponseDeploymentmanagerAlpha {
  /// Options regarding how to thread async requests.
  final List<AsyncOptionsResponse> asyncOptions;

  /// The mappings that apply for requests.
  final List<InputMappingResponse> inputMappings;

  /// The json path to the field in the resource JSON body into which the resource name should be mapped. Leaving this empty indicates that there should be no mapping performed.
  final String nameProperty;

  /// Options for how to validate and process properties on a resource.
  final ValidationOptionsResponse validationOptions;

  OptionsResponseDeploymentmanagerAlpha({
    required this.asyncOptions,
    required this.inputMappings,
    required this.nameProperty,
    required this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asyncOptions'] =
        pulumi.Input.encodeList<AsyncOptionsResponse, Map<String, dynamic>>(
            asyncOptions, (value) => value.toMap());
    map['inputMappings'] =
        pulumi.Input.encodeList<InputMappingResponse, Map<String, dynamic>>(
            inputMappings, (value) => value.toMap());
    map['nameProperty'] = nameProperty;
    map['validationOptions'] = validationOptions.toMap();
    return map;
  }

  factory OptionsResponseDeploymentmanagerAlpha.fromMap(
      Map<String, dynamic> map) {
    return OptionsResponseDeploymentmanagerAlpha(
      asyncOptions: pulumi.Input.decodeList<AsyncOptionsResponse>(
          map['asyncOptions'],
          (value) => AsyncOptionsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inputMappings: pulumi.Input.decodeList<InputMappingResponse>(
          map['inputMappings'],
          (value) => InputMappingResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      nameProperty: map['nameProperty'] as String,
      validationOptions: ValidationOptionsResponse.fromMap(
          (map['validationOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
