// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument.dart';
import 'set_value.dart';

class OverrideTaskStepProperties {
  /// Gets or sets the collection of override arguments to be used when
  /// executing a build step.
  final pulumi.Input<List<Argument>>? arguments;
  /// The source context against which run has to be queued.
  final pulumi.Input<String>? contextPath;
  /// The file against which run has to be queued.
  final pulumi.Input<String>? file;
  /// The name of the target build stage for the docker build.
  final pulumi.Input<String>? target;
  /// Base64 encoded update trigger token that will be attached with the base image trigger webhook.
  final pulumi.Input<String>? updateTriggerToken;
  /// The collection of overridable values that can be passed when running a Task.
  final pulumi.Input<List<SetValue>>? values;

  /// Creates a new [OverrideTaskStepProperties].
  /// [arguments] Gets or sets the collection of override arguments to be used when
  /// [contextPath] The source context against which run has to be queued.
  /// [file] The file against which run has to be queued.
  /// [target] The name of the target build stage for the docker build.
  /// [updateTriggerToken] Base64 encoded update trigger token that will be attached with the base image trigger webhook.
  /// [values] The collection of overridable values that can be passed when running a Task.
  const OverrideTaskStepProperties({
    this.arguments,
    this.contextPath,
    this.file,
    this.target,
    this.updateTriggerToken,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<Argument>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<Argument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contextPath': ?contextPath,
      'file': ?file,
      'target': ?target,
      'updateTriggerToken': ?updateTriggerToken,
      'values': ?pulumi.Input.mapOptionalInputValue<List<SetValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<SetValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OverrideTaskStepProperties.fromMap(Map<String, dynamic> map) {
    return OverrideTaskStepProperties(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Argument>(guardedValue, (value) => Argument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contextPath: (() { final guardedValue = map['contextPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTriggerToken: (() { final guardedValue = map['updateTriggerToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SetValue>(guardedValue, (value) => SetValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
