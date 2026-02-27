import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_policy_args.dart';

/// Provides an SNS data protection topic policy resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SNS topic.
///
///
/// Using `pulumi import`, import SNS Data Protection Topic Policy using the topic ARN. For example:
///
/// ```sh
/// $ pulumi import aws:sns/dataProtectionPolicy:DataProtectionPolicy example arn:aws:sns:us-west-2:123456789012:example
/// ```
class DataProtectionPolicy extends pulumi.CustomResource {
  /// The ARN of the SNS topic
  late final pulumi.Output<String> arn;

  /// The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DataProtectionPolicy(
    String name, {
    DataProtectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/dataProtectionPolicy:DataProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
