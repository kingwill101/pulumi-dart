// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_variable_args_doc}
/// Arguments for getVariable.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_variable_args_doc}
class GetVariableArgs {
  /// The name of the variable to operate on.
  final pulumi.Input<String> variableName;

  /// Creates a new [GetVariableArgs].
  /// [variableName] The name of the variable to operate on.
  GetVariableArgs({
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
    };
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      variableName: (map['variableName'] as String).input(),
    );
  }
}

