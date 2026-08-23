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
  const EncodedTaskStepResponse({
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
      baseImageDependencies: pulumi.Input.fromValue(pulumi.Input.decodeList<BaseImageDependencyResponse>(map['baseImageDependencies']!, (value) => BaseImageDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      contextAccessToken: (() { final guardedValue = map['contextAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextPath: (() { final guardedValue = map['contextPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodedTaskContent: pulumi.Input.fromValue(map['encodedTaskContent'] as String),
      encodedValuesContent: (() { final guardedValue = map['encodedValuesContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SetValueResponse>(guardedValue, (value) => SetValueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
