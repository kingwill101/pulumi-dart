// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordAlias {
  /// Set to `true` if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see [related part of documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-values.html#rrsets-values-alias-evaluate-target-health).
  final pulumi.Input<bool> evaluateTargetHealth;
  /// DNS domain name for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or another resource record set in this hosted zone.
  final pulumi.Input<String> name;
  /// Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or Route 53 hosted zone. See `resource_elb.zone_id` for example.
  final pulumi.Input<String> zoneId;

  /// Creates a new [RecordAlias].
  /// [evaluateTargetHealth] Set to `true` if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. Some resources have special requirements, see [related part of documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-values.html#rrsets-values-alias-evaluate-target-health).
  /// [name] DNS domain name for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or another resource record set in this hosted zone.
  /// [zoneId] Hosted zone ID for a CloudFront distribution, S3 bucket, ELB, AWS Global Accelerator, or Route 53 hosted zone. See `resource_elb.zone_id` for example.
  const RecordAlias({
    required this.evaluateTargetHealth,
    required this.name,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluateTargetHealth': evaluateTargetHealth,
      'name': name,
      'zoneId': zoneId,
    };
  }

  factory RecordAlias.fromMap(Map<String, dynamic> map) {
    return RecordAlias(
      evaluateTargetHealth: pulumi.Input.fromValue(map['evaluateTargetHealth'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
