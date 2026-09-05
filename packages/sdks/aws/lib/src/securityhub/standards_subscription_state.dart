// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StandardsSubscription resources.
class StandardsSubscriptionState {
  /// The ARN of a resource that represents your subscription to a supported standard.
  final pulumi.Input<String?>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ARN of a standard - see below.
  ///
  /// Currently available standards (remember to replace `${var.partition}` and `${var.region}` as appropriate):
  ///
  /// | Name                                     | ARN                                                                                                          |
  /// |------------------------------------------|--------------------------------------------------------------------------------------------------------------|
  /// | AWS Foundational Security Best Practices | `arn:${var.partition}:securityhub:${var.region}::standards/aws-foundational-security-best-practices/v/1.0.0` |
  /// | AWS Resource Tagging Standard            | `arn:${var.partition}:securityhub:${var.region}::standards/aws-resource-tagging-standard/v/1.0.0`            |
  /// | CIS AWS Foundations Benchmark v1.2.0     | `arn:${var.partition}:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0`                           |
  /// | CIS AWS Foundations Benchmark v1.4.0     | `arn:${var.partition}:securityhub:${var.region}::standards/cis-aws-foundations-benchmark/v/1.4.0`            |
  /// | CIS AWS Foundations Benchmark v3.0.0     | `arn:${var.partition}:securityhub:${var.region}::standards/cis-aws-foundations-benchmark/v/3.0.0`            |
  /// | NIST SP 800-53 Rev. 5                    | `arn:${var.partition}:securityhub:${var.region}::standards/nist-800-53/v/5.0.0`                              |
  /// | NIST SP 800-171 Rev. 2                   | `arn:${var.partition}:securityhub:${var.region}::standards/nist-800-171/v/2.0.0`                             |
  /// | PCI DSS  v3.2.1                          | `arn:${var.partition}:securityhub:${var.region}::standards/pci-dss/v/3.2.1`                                  |
  /// | PCI DSS  v4.0.1                          | `arn:${var.partition}:securityhub:${var.region}::standards/pci-dss/v/4.0.1`                                  |
  final pulumi.Input<String?>? standardsArn;

  /// Creates a new [StandardsSubscriptionState].
  /// [arn] The ARN of a resource that represents your subscription to a supported standard.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standardsArn] The ARN of a standard - see below.
  const StandardsSubscriptionState({
    this.arn,
    this.region,
    this.standardsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'standardsArn': ?standardsArn,
    };
  }

  factory StandardsSubscriptionState.fromMap(Map<String, dynamic> map) {
    return StandardsSubscriptionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardsArn: (() { final guardedValue = map['standardsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
