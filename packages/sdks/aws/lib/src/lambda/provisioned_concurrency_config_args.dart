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
      functionName: (map['functionName'] as String).input(),
      provisionedConcurrentExecutions: (map['provisionedConcurrentExecutions'] as int).input(),
      qualifier: (map['qualifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      skipDestroy: map['skipDestroy'] == null ? null : ((map['skipDestroy'] as bool).input()).input(),
    );
  }
}

