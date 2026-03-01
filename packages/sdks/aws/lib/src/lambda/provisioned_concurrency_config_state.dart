// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProvisionedConcurrencyConfig resources.
class ProvisionedConcurrencyConfigState {
  /// Name or Amazon Resource Name (ARN) of the Lambda Function.
  final pulumi.Input<String>? functionName;
  /// Amount of capacity to allocate. Must be greater than or equal to 1.
  final pulumi.Input<int>? provisionedConcurrentExecutions;
  /// Lambda Function version or Lambda Alias name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to retain the provisioned concurrency configuration upon destruction. Defaults to `false`. If set to `true`, the resource is simply removed from state instead.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [ProvisionedConcurrencyConfigState].
  /// [functionName] Name or Amazon Resource Name (ARN) of the Lambda Function.
  /// [provisionedConcurrentExecutions] Amount of capacity to allocate. Must be greater than or equal to 1.
  /// [qualifier] Lambda Function version or Lambda Alias name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the provisioned concurrency configuration upon destruction. Defaults to `false`. If set to `true`, the resource is simply removed from state instead.
  ProvisionedConcurrencyConfigState({
    pulumi.Output<String>? functionName,
    pulumi.Output<int>? provisionedConcurrentExecutions,
    pulumi.Output<String>? qualifier,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipDestroy,
  }) :
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      provisionedConcurrentExecutions = pulumi.Input.asOptionalInput<int>(provisionedConcurrentExecutions),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'provisionedConcurrentExecutions': ?provisionedConcurrentExecutions,
      'qualifier': ?qualifier,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory ProvisionedConcurrencyConfigState.fromMap(Map<String, dynamic> map) {
    return ProvisionedConcurrencyConfigState(
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      provisionedConcurrentExecutions: map['provisionedConcurrentExecutions'] == null ? null : pulumi.Output.create<int>(map['provisionedConcurrentExecutions'] as int),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
    );
  }
}

