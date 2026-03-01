// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogDeliveryDestinationPolicy resources.
class LogDeliveryDestinationPolicyState {
  /// The name of the delivery destination to assign this policy to.
  final pulumi.Input<String>? deliveryDestinationName;
  /// The contents of the policy.
  final pulumi.Input<String>? deliveryDestinationPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogDeliveryDestinationPolicyState].
  /// [deliveryDestinationName] The name of the delivery destination to assign this policy to.
  /// [deliveryDestinationPolicy] The contents of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogDeliveryDestinationPolicyState({
    pulumi.Output<String>? deliveryDestinationName,
    pulumi.Output<String>? deliveryDestinationPolicy,
    pulumi.Output<String>? region,
  }) :
      deliveryDestinationName = pulumi.Input.asOptionalInput<String>(deliveryDestinationName),
      deliveryDestinationPolicy = pulumi.Input.asOptionalInput<String>(deliveryDestinationPolicy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryDestinationName': ?deliveryDestinationName,
      'deliveryDestinationPolicy': ?deliveryDestinationPolicy,
      'region': ?region,
    };
  }

  factory LogDeliveryDestinationPolicyState.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationPolicyState(
      deliveryDestinationName: map['deliveryDestinationName'] == null ? null : pulumi.Output.create<String>(map['deliveryDestinationName'] as String),
      deliveryDestinationPolicy: map['deliveryDestinationPolicy'] == null ? null : pulumi.Output.create<String>(map['deliveryDestinationPolicy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

