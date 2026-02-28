// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control_input_parameter.dart';
import 'framework_control_scope.dart';

class FrameworkControl {
  /// One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  final List<FrameworkControlInputParameter>? inputParameters;

  /// The name of a control. This name is between 1 and 256 characters.
  final String name;

  /// The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  final FrameworkControlScope? scope;

  /// Creates a new [FrameworkControl].
  /// [inputParameters] One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  /// [name] The name of a control. This name is between 1 and 256 characters.
  /// [scope] The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  FrameworkControl({
    this.inputParameters,
    required this.name,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputParametersValue = inputParameters;
    if (inputParametersValue != null) {
      map['inputParameters'] = pulumi.Input.encodeList<
          FrameworkControlInputParameter,
          Map<String, dynamic>>(inputParametersValue, (value) => value.toMap());
    }
    map['name'] = name;
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue.toMap();
    }
    return map;
  }

  factory FrameworkControl.fromMap(Map<String, dynamic> map) {
    return FrameworkControl(
      inputParameters: map['inputParameters'] == null
          ? null
          : pulumi.Input.decodeList<FrameworkControlInputParameter>(
              map['inputParameters'],
              (value) => FrameworkControlInputParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      scope: map['scope'] == null
          ? null
          : FrameworkControlScope.fromMap(
              (map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}
