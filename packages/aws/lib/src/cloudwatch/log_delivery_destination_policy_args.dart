// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_delivery_destination_policy_log_delivery_destination_policy_args_doc}
/// The set of arguments for LogDeliveryDestinationPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_delivery_destination_policy_log_delivery_destination_policy_args_doc}
class LogDeliveryDestinationPolicyArgs {
  /// The name of the delivery destination to assign this policy to.
  final pulumi.Input<String> deliveryDestinationName;

  /// The contents of the policy.
  final pulumi.Input<String> deliveryDestinationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogDeliveryDestinationPolicyArgs].
  /// [deliveryDestinationName] The name of the delivery destination to assign this policy to.
  /// [deliveryDestinationPolicy] The contents of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogDeliveryDestinationPolicyArgs({
    required String deliveryDestinationName,
    required String deliveryDestinationPolicy,
    String? region,
  }) : deliveryDestinationName = pulumi.Input.asInput<String>(
         deliveryDestinationName,
       ),
       deliveryDestinationPolicy = pulumi.Input.asInput<String>(
         deliveryDestinationPolicy,
       ),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryDestinationName': deliveryDestinationName,
      'deliveryDestinationPolicy': deliveryDestinationPolicy,
      'region': ?region,
    };
  }

  factory LogDeliveryDestinationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationPolicyArgs(
      deliveryDestinationName: map['deliveryDestinationName'] as String,
      deliveryDestinationPolicy: map['deliveryDestinationPolicy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
