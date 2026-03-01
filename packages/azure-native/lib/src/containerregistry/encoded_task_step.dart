// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'set_value.dart';

/// The properties of a encoded task step.
class EncodedTaskStep {
  /// The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  final String? contextAccessToken;
  /// The URL(absolute or relative) of the source context for the task step.
  final String? contextPath;
  /// Base64 encoded value of the template/definition file content.
  final String encodedTaskContent;
  /// Base64 encoded value of the parameters/values file content.
  final String? encodedValuesContent;
  /// The type of the step.
  /// Expected value is 'EncodedTask'.
  final String type;
  /// The collection of overridable values that can be passed when running a task.
  final List<SetValue>? values;

  /// Creates a new [EncodedTaskStep].
  /// [contextAccessToken] The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  /// [contextPath] The URL(absolute or relative) of the source context for the task step.
  /// [encodedTaskContent] Base64 encoded value of the template/definition file content.
  /// [encodedValuesContent] Base64 encoded value of the parameters/values file content.
  /// [type] The type of the step.
  /// [values] The collection of overridable values that can be passed when running a task.
  EncodedTaskStep({
    this.contextAccessToken,
    this.contextPath,
    required this.encodedTaskContent,
    this.encodedValuesContent,
    required this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'encodedTaskContent': encodedTaskContent,
      'encodedValuesContent': ?encodedValuesContent,
      'type': type,
      'values': ?values == null ? null : pulumi.Input.encodeList<SetValue, Map<String, dynamic>>(values!, (value) => value.toMap()),
    };
  }

  factory EncodedTaskStep.fromMap(Map<String, dynamic> map) {
    return EncodedTaskStep(
      contextAccessToken: map['contextAccessToken'] == null ? null : map['contextAccessToken'] as String,
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      encodedTaskContent: map['encodedTaskContent'] as String,
      encodedValuesContent: map['encodedValuesContent'] == null ? null : map['encodedValuesContent'] as String,
      type: map['type'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<SetValue>(map['values'], (value) => SetValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

