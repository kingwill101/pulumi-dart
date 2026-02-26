// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FunctionRecursionConfig.
class FunctionRecursionConfigArgs {
  /// Name of the Lambda function.
  final Input<String> functionName;

  /// Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  ///
  /// The following arguments are optional:
  final Input<String> recursiveLoop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  FunctionRecursionConfigArgs({
    required this.functionName,
    required this.recursiveLoop,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    map['recursiveLoop'] = recursiveLoop;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory FunctionRecursionConfigArgs.fromMap(Map<String, dynamic> map) {
    return FunctionRecursionConfigArgs(
      functionName: Input.asInput<String>(map['functionName']),
      recursiveLoop: Input.asInput<String>(map['recursiveLoop']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
