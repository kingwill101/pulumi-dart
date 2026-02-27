import 'package:pulumi/pulumi.dart';
import 'resource_policy_args11.dart';

/// Resource for managing an AWS X-Ray Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import X-Ray Resource Policy using the `policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:xray/resourcePolicy:ResourcePolicy example resource_policy-name
/// ```
class ResourcePolicy11 extends CustomResource {
  /// Flag to indicate whether to bypass the resource policy lockout safety check. Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately. Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent PutResourcePolicy request. The default value is `false`.
  late final Output<bool?> bypassPolicyLockoutCheck;

  /// When the policy was last updated, in Unix time seconds.
  late final Output<String> lastUpdatedTime;

  /// JSON string of the resource policy or resource policy document, which can be up to 5kb in size.
  ///
  /// The following arguments are optional:
  late final Output<String> policyDocument;

  /// name of the resource policy. Must be unique within a specific Amazon Web Services account.
  late final Output<String> policyName;

  /// Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  late final Output<String> policyRevisionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ResourcePolicy11(
    String name, {
    ResourcePolicyArgs11? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:xray/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bypassPolicyLockoutCheck =
        registerOutput<bool?>('bypassPolicyLockoutCheck');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.policyRevisionId = registerOutput<String>('policyRevisionId');
    this.region = registerOutput<String>('region');
  }
}
