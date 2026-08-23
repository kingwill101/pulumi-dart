// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control_input_parameter.dart';
import 'get_framework_control_scope.dart';

class GetFrameworkControl {
  /// One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  final pulumi.Input<List<GetFrameworkControlInputParameter>> inputParameters;
  /// Backup framework name.
  final pulumi.Input<String> name;
  /// Scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  final pulumi.Input<List<GetFrameworkControlScope>> scopes;

  /// Creates a new [GetFrameworkControl].
  /// [inputParameters] One or more input parameter blocks. An example of a control with two parameters is: "backup plan frequency is at least daily and the retention period is at least 1 year". The first parameter is daily. The second parameter is 1 year. Detailed below.
  /// [name] Backup framework name.
  /// [scopes] Scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans. Detailed below.
  const GetFrameworkControl({
    required this.inputParameters,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputParameters': pulumi.Input.mapInputValue<List<GetFrameworkControlInputParameter>, List<Map<String, dynamic>>>(inputParameters, (value) => pulumi.Input.encodeList<GetFrameworkControlInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'scopes': pulumi.Input.mapInputValue<List<GetFrameworkControlScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<GetFrameworkControlScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFrameworkControl.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControl(
      inputParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrameworkControlInputParameter>(map['inputParameters']!, (value) => GetFrameworkControlInputParameter.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrameworkControlScope>(map['scopes']!, (value) => GetFrameworkControlScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
