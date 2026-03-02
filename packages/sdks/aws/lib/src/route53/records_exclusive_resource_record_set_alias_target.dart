// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordsExclusiveResourceRecordSetAliasTarget {
  /// DNS domain name for another resource record set in this hosted zone.
  final pulumi.Input<String> dnsName;
  /// Set to `true` if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see [the AWS documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-values.html#rrsets-values-alias-evaluate-target-health) for additional details.
  final pulumi.Input<bool> evaluateTargetHealth;
  /// Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or Route 53 hosted zone. See `resource_elb.zone_id` for an example.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [RecordsExclusiveResourceRecordSetAliasTarget].
  /// [dnsName] DNS domain name for another resource record set in this hosted zone.
  /// [evaluateTargetHealth] Set to `true` if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see [the AWS documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-values.html#rrsets-values-alias-evaluate-target-health) for additional details.
  /// [hostedZoneId] Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or Route 53 hosted zone. See `resource_elb.zone_id` for an example.
  RecordsExclusiveResourceRecordSetAliasTarget({
    required this.dnsName,
    required this.evaluateTargetHealth,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'evaluateTargetHealth': evaluateTargetHealth,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory RecordsExclusiveResourceRecordSetAliasTarget.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetAliasTarget(
      dnsName: (map['dnsName'] as String).input(),
      evaluateTargetHealth: (map['evaluateTargetHealth'] as bool).input(),
      hostedZoneId: (map['hostedZoneId'] as String).input(),
    );
  }
}

