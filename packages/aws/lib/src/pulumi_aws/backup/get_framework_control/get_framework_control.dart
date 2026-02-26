// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_framework_control_input_parameter/get_framework_control_input_parameter.dart';
import '../get_framework_control_scope/get_framework_control_scope.dart';

class GetFrameworkControl {
  /// One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  final List<GetFrameworkControlInputParameter> inputParameters;

  /// Backup framework name.
  final String name;

  /// Scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  final List<GetFrameworkControlScope> scopes;

  GetFrameworkControl({
    required this.inputParameters,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputParameters'] = Input.encodeList<GetFrameworkControlInputParameter,
        Map<String, dynamic>>(inputParameters, (value) => value.toMap());
    map['name'] = name;
    map['scopes'] =
        Input.encodeList<GetFrameworkControlScope, Map<String, dynamic>>(
            scopes, (value) => value.toMap());
    return map;
  }

  factory GetFrameworkControl.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControl(
      inputParameters: Input.decodeList<GetFrameworkControlInputParameter>(
          map['inputParameters'],
          (value) => GetFrameworkControlInputParameter.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      scopes: Input.decodeList<GetFrameworkControlScope>(
          map['scopes'],
          (value) => GetFrameworkControlScope.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
