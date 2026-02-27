import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_policy_args.dart';

/// Manages a SES Identity Policy. More information about SES Sending Authorization Policies can be found in the [SES Developer Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES Identity Policies using the identity and policy name, separated by a pipe character (`|`). For example:
///
/// ```sh
/// $ pulumi import aws:ses/identityPolicy:IdentityPolicy example 'example.com|example'
/// ```
class IdentityPolicy extends pulumi.CustomResource {
  /// Name or Amazon Resource Name (ARN) of the SES Identity.
  late final pulumi.Output<String> identity;

  /// Name of the policy.
  late final pulumi.Output<String> name;

  /// JSON string of the policy.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  IdentityPolicy(
    String name, {
    IdentityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/identityPolicy:IdentityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.identity = registerOutput<String>('identity');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
