// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control_input_parameter.dart';
import 'framework_control_scope.dart';

class FrameworkControl {
  /// One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  final pulumi.Input<List<FrameworkControlInputParameter>?>? inputParameters;
  /// The name of a control. This name is between 1 and 256 characters.
  final pulumi.Input<String> name;
  /// The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  final pulumi.Input<FrameworkControlScope?>? scope;

  /// Creates a new [FrameworkControl].
  /// [inputParameters] One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  /// [name] The name of a control. This name is between 1 and 256 characters.
  /// [scope] The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  const FrameworkControl({
    this.inputParameters,
    required this.name,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputParameters': ?pulumi.Input.mapOptionalInputValue<List<FrameworkControlInputParameter>, List<Map<String, dynamic>>>(inputParameters, (value) => pulumi.Input.encodeList<FrameworkControlInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'scope': ?pulumi.Input.mapOptionalInputValue<FrameworkControlScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory FrameworkControl.fromMap(Map<String, dynamic> map) {
    return FrameworkControl(
      inputParameters: (() { final guardedValue = map['inputParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkControlInputParameter>(guardedValue, (value) => FrameworkControlInputParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkControlScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
