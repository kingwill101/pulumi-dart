// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogDeliveryDestinationPolicy.
class LogDeliveryDestinationPolicyArgs {
  /// The name of the delivery destination to assign this policy to.
  final pulumi.Input<String> deliveryDestinationName;

  /// The contents of the policy.
  final pulumi.Input<String> deliveryDestinationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LogDeliveryDestinationPolicyArgs({
    required this.deliveryDestinationName,
    required this.deliveryDestinationPolicy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryDestinationName'] = deliveryDestinationName;
    map['deliveryDestinationPolicy'] = deliveryDestinationPolicy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogDeliveryDestinationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationPolicyArgs(
      deliveryDestinationName:
          pulumi.Input.asInput<String>(map['deliveryDestinationName']),
      deliveryDestinationPolicy:
          pulumi.Input.asInput<String>(map['deliveryDestinationPolicy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
