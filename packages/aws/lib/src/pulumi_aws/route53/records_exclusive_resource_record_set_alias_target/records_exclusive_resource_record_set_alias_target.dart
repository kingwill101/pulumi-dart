// ignore_for_file: unused_element, unnecessary_cast

class RecordsExclusiveResourceRecordSetAliasTarget {
  /// DNS domain name for another resource record set in this hosted zone.
  final String dnsName;

  /// Set to `true` if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see [the AWS documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-values.html#rrsets-values-alias-evaluate-target-health) for additional details.
  final bool evaluateTargetHealth;

  /// Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or Route 53 hosted zone. See `resource_elb.zone_id` for an example.
  final String hostedZoneId;

  RecordsExclusiveResourceRecordSetAliasTarget({
    required this.dnsName,
    required this.evaluateTargetHealth,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['evaluateTargetHealth'] = evaluateTargetHealth;
    map['hostedZoneId'] = hostedZoneId;
    return map;
  }

  factory RecordsExclusiveResourceRecordSetAliasTarget.fromMap(
      Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetAliasTarget(
      dnsName: map['dnsName'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] as bool,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
