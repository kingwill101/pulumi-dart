// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordWeightedRoutingPolicy {
  /// A numeric value indicating the relative weight of the record. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted.
  final pulumi.Input<int> weight;

  /// Creates a new [RecordWeightedRoutingPolicy].
  /// [weight] A numeric value indicating the relative weight of the record. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted.
  const RecordWeightedRoutingPolicy({
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight,
    };
  }

  factory RecordWeightedRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordWeightedRoutingPolicy(
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

