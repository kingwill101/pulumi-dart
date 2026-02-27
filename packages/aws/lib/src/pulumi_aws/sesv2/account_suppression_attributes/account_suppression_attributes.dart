import 'package:pulumi/pulumi.dart';
import 'account_suppression_attributes_args.dart';

/// Manages AWS SESv2 (Simple Email V2) account-level suppression attributes.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import account-level suppression attributes using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/accountSuppressionAttributes:AccountSuppressionAttributes example 123456789012
/// ```
class AccountSuppressionAttributes extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. Valid values: `COMPLAINT`, `BOUNCE`.
  late final Output<List<String>> suppressedReasons;

  AccountSuppressionAttributes(
    String name, {
    AccountSuppressionAttributesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/accountSuppressionAttributes:AccountSuppressionAttributes',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.suppressedReasons = registerOutput<List<String>>('suppressedReasons');
  }
}
