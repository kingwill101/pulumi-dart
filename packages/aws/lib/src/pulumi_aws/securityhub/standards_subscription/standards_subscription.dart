import 'package:pulumi/pulumi.dart' as pulumi;
import 'standards_subscription_args.dart';

/// Subscribes to a Security Hub standard.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub standards subscriptions using the standards subscription ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription cis arn:aws:securityhub:eu-west-1:123456789012:subscription/cis-aws-foundations-benchmark/v/1.2.0
/// ```
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription pci_321 arn:aws:securityhub:eu-west-1:123456789012:subscription/pci-dss/v/3.2.1
/// ```
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription nist_800_53_rev_5 arn:aws:securityhub:eu-west-1:123456789012:subscription/nist-800-53/v/5.0.0
/// ```
class StandardsSubscription extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

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
  late final pulumi.Output<String> standardsArn;

  StandardsSubscription(
    String name, {
    StandardsSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsSubscription:StandardsSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.standardsArn = registerOutput<String>('standardsArn');
  }
}
