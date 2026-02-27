// ignore_for_file: unused_element, unnecessary_cast

class RecordAlias {
  /// Set to `true` if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see [related part of documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-values.html#rrsets-values-alias-evaluate-target-health).
  final bool evaluateTargetHealth;

  /// DNS domain name for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or another resource record set in this hosted zone.
  final String name;

  /// Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or Route 53 hosted zone. See `resource_elb.zone_id` for example.
  final String zoneId;

  RecordAlias({
    required this.evaluateTargetHealth,
    required this.name,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluateTargetHealth'] = evaluateTargetHealth;
    map['name'] = name;
    map['zoneId'] = zoneId;
    return map;
  }

  factory RecordAlias.fromMap(Map<String, dynamic> map) {
    return RecordAlias(
      evaluateTargetHealth: map['evaluateTargetHealth'] as bool,
      name: map['name'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}
