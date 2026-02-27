// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProvisionedConcurrencyConfig.
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

  ProvisionedConcurrencyConfigArgs({
    required this.functionName,
    required this.provisionedConcurrentExecutions,
    required this.qualifier,
    this.region,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    map['provisionedConcurrentExecutions'] = provisionedConcurrentExecutions;
    map['qualifier'] = qualifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    return map;
  }

  factory ProvisionedConcurrencyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedConcurrencyConfigArgs(
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      provisionedConcurrentExecutions:
          pulumi.Input.asInput<int>(map['provisionedConcurrentExecutions']),
      qualifier: pulumi.Input.asInput<String>(map['qualifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
    );
  }
}
