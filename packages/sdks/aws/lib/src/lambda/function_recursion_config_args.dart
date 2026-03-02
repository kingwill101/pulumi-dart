// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_function_recursion_config_function_recursion_config_args_doc}
/// The set of arguments for FunctionRecursionConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_function_recursion_config_function_recursion_config_args_doc}
class FunctionRecursionConfigArgs {
  /// Name of the Lambda function.
  final pulumi.Input<String> functionName;
  /// Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> recursiveLoop;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FunctionRecursionConfigArgs].
  /// [functionName] Name of the Lambda function.
  /// [recursiveLoop] Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FunctionRecursionConfigArgs({
    required this.functionName,
    required this.recursiveLoop,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'recursiveLoop': recursiveLoop,
      'region': ?region,
    };
  }

  factory FunctionRecursionConfigArgs.fromMap(Map<String, dynamic> map) {
    return FunctionRecursionConfigArgs(
      functionName: (map['functionName'] as String).input(),
      recursiveLoop: (map['recursiveLoop'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

