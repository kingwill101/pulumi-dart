import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_filter_args.dart';

/// Provides an SES receipt filter resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES Receipt Filter using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptFilter:ReceiptFilter test some-filter
/// ```
class ReceiptFilter extends pulumi.CustomResource {
  /// The SES receipt filter ARN.
  late final pulumi.Output<String> arn;

  /// The IP address or address range to filter, in CIDR notation
  late final pulumi.Output<String> cidr;

  /// The name of the filter
  late final pulumi.Output<String> name;

  /// Block or Allow
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ReceiptFilter(
    String name, {
    ReceiptFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptFilter:ReceiptFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cidr = registerOutput<String>('cidr');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
