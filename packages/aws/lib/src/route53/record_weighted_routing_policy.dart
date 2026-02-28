// ignore_for_file: unused_element, unnecessary_cast

class RecordWeightedRoutingPolicy {
  /// A numeric value indicating the relative weight of the record. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted.
  final int weight;

  /// Creates a new [RecordWeightedRoutingPolicy].
  /// [weight] A numeric value indicating the relative weight of the record. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted.
  RecordWeightedRoutingPolicy({
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weight'] = weight;
    return map;
  }

  factory RecordWeightedRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordWeightedRoutingPolicy(
      weight: map['weight'] as int,
    );
  }
}
