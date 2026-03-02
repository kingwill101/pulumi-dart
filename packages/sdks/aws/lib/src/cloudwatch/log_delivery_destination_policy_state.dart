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
    this.deliveryDestinationName,
    this.deliveryDestinationPolicy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryDestinationName': ?deliveryDestinationName,
      'deliveryDestinationPolicy': ?deliveryDestinationPolicy,
      'region': ?region,
    };
  }

  factory LogDeliveryDestinationPolicyState.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationPolicyState(
      deliveryDestinationName: map['deliveryDestinationName'] == null ? null : ((map['deliveryDestinationName'] as String).input()).input(),
      deliveryDestinationPolicy: map['deliveryDestinationPolicy'] == null ? null : ((map['deliveryDestinationPolicy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

