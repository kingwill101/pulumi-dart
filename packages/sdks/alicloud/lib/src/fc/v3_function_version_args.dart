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
  V3FunctionVersionArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> functionName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      functionName = pulumi.Input.asInput<String>(functionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'functionName': functionName,
    };
  }

  factory V3FunctionVersionArgs.fromMap(Map<String, dynamic> map) {
    return V3FunctionVersionArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
    );
  }
}

