// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_provisioned_concurrency_config_provisioned_concurrency_config_args_doc}
/// The set of arguments for ProvisionedConcurrencyConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_provisioned_concurrency_config_provisioned_concurrency_config_args_doc}
class ProvisionedConcurrencyConfigArgs {
  /// Name or Amazon Resource Name (ARN) of the Lambda Function.
  final pulumi.Input<String> functionName;
  /// Amount of capacity to allocate. Must be greater than or equal to 1.
  final pulumi.Input<int> provisionedConcurrentExecutions;
  /// Lambda Function version or Lambda Alias name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to retain the provisioned concurrency configuration upon destruction. Defaults to `false`. If set to `true`, the resource is simply removed from state instead.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [ProvisionedConcurrencyConfigArgs].
  /// [functionName] Name or Amazon Resource Name (ARN) of the Lambda Function.
  /// [provisionedConcurrentExecutions] Amount of capacity to allocate. Must be greater than or equal to 1.
  /// [qualifier] Lambda Function version or Lambda Alias name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the provisioned concurrency configuration upon destruction. Defaults to `false`. If set to `true`, the resource is simply removed from state instead.
  ProvisionedConcurrencyConfigArgs({
    required this.functionName,
    required this.provisionedConcurrentExecutions,
    required this.qualifier,
    this.region,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'provisionedConcurrentExecutions': provisionedConcurrentExecutions,
      'qualifier': qualifier,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory ProvisionedConcurrencyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedConcurrencyConfigArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      provisionedConcurrentExecutions: pulumi.Input.fromValue(map['provisionedConcurrentExecutions'] as int),
      qualifier: pulumi.Input.fromValue(map['qualifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

