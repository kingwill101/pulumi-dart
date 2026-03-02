// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_image_dependency_response.dart';
import 'set_value_response.dart';

/// The properties of a encoded task step.
class EncodedTaskStepResponse {
  /// List of base image dependencies for a step.
  final pulumi.Input<List<BaseImageDependencyResponse>> baseImageDependencies;
  /// The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  final pulumi.Input<String>? contextAccessToken;
  /// The URL(absolute or relative) of the source context for the task step.
  final pulumi.Input<String>? contextPath;
  /// Base64 encoded value of the template/definition file content.
  final pulumi.Input<String> encodedTaskContent;
  /// Base64 encoded value of the parameters/values file content.
  final pulumi.Input<String>? encodedValuesContent;
  /// The type of the step.
  /// Expected value is 'EncodedTask'.
  final pulumi.Input<String> type;
  /// The collection of overridable values that can be passed when running a task.
  final pulumi.Input<List<SetValueResponse>>? values;

  /// Creates a new [EncodedTaskStepResponse].
  /// [baseImageDependencies] List of base image dependencies for a step.
  /// [contextAccessToken] The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  /// [contextPath] The URL(absolute or relative) of the source context for the task step.
  /// [encodedTaskContent] Base64 encoded value of the template/definition file content.
  /// [encodedValuesContent] Base64 encoded value of the parameters/values file content.
  /// [type] The type of the step.
  /// [values] The collection of overridable values that can be passed when running a task.
  EncodedTaskStepResponse({
    required this.baseImageDependencies,
    this.contextAccessToken,
    this.contextPath,
    required this.encodedTaskContent,
    this.encodedValuesContent,
    required this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImageDependencies': pulumi.Input.mapInputValue<List<BaseImageDependencyResponse>, List<Map<String, dynamic>>>(baseImageDependencies, (value) => pulumi.Input.encodeList<BaseImageDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'encodedTaskContent': encodedTaskContent,
      'encodedValuesContent': ?encodedValuesContent,
      'type': type,
      'values': ?pulumi.Input.mapOptionalInputValue<List<SetValueResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<SetValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EncodedTaskStepResponse.fromMap(Map<String, dynamic> map) {
    return EncodedTaskStepResponse(
      baseImageDependencies: (pulumi.Input.decodeList<BaseImageDependencyResponse>(map['baseImageDependencies'], (value) => BaseImageDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contextAccessToken: map['contextAccessToken'] == null ? null : (map['contextAccessToken']! as String).input(),
      contextPath: map['contextPath'] == null ? null : (map['contextPath']! as String).input(),
      encodedTaskContent: (map['encodedTaskContent'] as String).input(),
      encodedValuesContent: map['encodedValuesContent'] == null ? null : (map['encodedValuesContent']! as String).input(),
      type: (map['type'] as String).input(),
      values: map['values'] == null ? null : (pulumi.Input.decodeList<SetValueResponse>(map['values']!, (value) => SetValueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

