// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument_response.dart';
import 'set_value_response.dart';

class OverrideTaskStepPropertiesResponse {
  /// Gets or sets the collection of override arguments to be used when
  /// executing a build step.
  final List<ArgumentResponse>? arguments;
  /// The source context against which run has to be queued.
  final String? contextPath;
  /// The file against which run has to be queued.
  final String? file;
  /// The name of the target build stage for the docker build.
  final String? target;
  /// Base64 encoded update trigger token that will be attached with the base image trigger webhook.
  final String? updateTriggerToken;
  /// The collection of overridable values that can be passed when running a Task.
  final List<SetValueResponse>? values;

  /// Creates a new [OverrideTaskStepPropertiesResponse].
  /// [arguments] Gets or sets the collection of override arguments to be used when
  /// [contextPath] The source context against which run has to be queued.
  /// [file] The file against which run has to be queued.
  /// [target] The name of the target build stage for the docker build.
  /// [updateTriggerToken] Base64 encoded update trigger token that will be attached with the base image trigger webhook.
  /// [values] The collection of overridable values that can be passed when running a Task.
  OverrideTaskStepPropertiesResponse({
    this.arguments,
    this.contextPath,
    this.file,
    this.target,
    this.updateTriggerToken,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments == null ? null : pulumi.Input.encodeList<ArgumentResponse, Map<String, dynamic>>(arguments!, (value) => value.toMap()),
      'contextPath': ?contextPath,
      'file': ?file,
      'target': ?target,
      'updateTriggerToken': ?updateTriggerToken,
      'values': ?values == null ? null : pulumi.Input.encodeList<SetValueResponse, Map<String, dynamic>>(values!, (value) => value.toMap()),
    };
  }

  factory OverrideTaskStepPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OverrideTaskStepPropertiesResponse(
      arguments: map['arguments'] == null ? null : pulumi.Input.decodeList<ArgumentResponse>(map['arguments'], (value) => ArgumentResponse.fromMap((value as Map).cast<String, dynamic>())),
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      file: map['file'] == null ? null : map['file'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      updateTriggerToken: map['updateTriggerToken'] == null ? null : map['updateTriggerToken'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<SetValueResponse>(map['values'], (value) => SetValueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

