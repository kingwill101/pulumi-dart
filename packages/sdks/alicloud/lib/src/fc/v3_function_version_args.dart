// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_v3_function_version_v3_function_version_args_doc}
/// The set of arguments for V3FunctionVersion.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_function_version_v3_function_version_args_doc}
class V3FunctionVersionArgs {
  /// Description of the function version
  final pulumi.Input<String>? description;

  /// Function Name
  final pulumi.Input<String> functionName;

  /// Creates a new [V3FunctionVersionArgs].
  /// [description] Description of the function version
  /// [functionName] Function Name
  V3FunctionVersionArgs({this.description, required this.functionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'functionName': functionName,
    };
  }

  factory V3FunctionVersionArgs.fromMap(Map<String, dynamic> map) {
    return V3FunctionVersionArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
    );
  }
}
