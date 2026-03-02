// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FunctionRecursionConfig resources.
class FunctionRecursionConfigState {
  /// Name of the Lambda function.
  final pulumi.Input<String>? functionName;
  /// Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? recursiveLoop;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FunctionRecursionConfigState].
  /// [functionName] Name of the Lambda function.
  /// [recursiveLoop] Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FunctionRecursionConfigState({
    this.functionName,
    this.recursiveLoop,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'recursiveLoop': ?recursiveLoop,
      'region': ?region,
    };
  }

  factory FunctionRecursionConfigState.fromMap(Map<String, dynamic> map) {
    return FunctionRecursionConfigState(
      functionName: map['functionName'] == null ? null : ((map['functionName'] as String).input()).input(),
      recursiveLoop: map['recursiveLoop'] == null ? null : ((map['recursiveLoop'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

