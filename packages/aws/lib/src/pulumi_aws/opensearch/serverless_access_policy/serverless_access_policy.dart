import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_access_policy_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Access Policy. See AWS documentation for [data access policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html) and [supported data access policy permissions](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html#serverless-data-supported-permissions).
///
/// ## Example Usage
///
/// ### Grant all collection and index permissions
///
///
///
/// ### Grant read-only collection and index permissions
///
///
///
/// ### Grant SAML identity permissions
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Access Policy using the `name` and `type` arguments separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessAccessPolicy:ServerlessAccessPolicy example example/data
/// ```
class ServerlessAccessPolicy extends pulumi.CustomResource {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  late final pulumi.Output<String?> description;

  /// Name of the policy.
  late final pulumi.Output<String> name;

  /// JSON policy document to use as the content for the new policy
  late final pulumi.Output<String> policy;

  /// Version of the policy.
  late final pulumi.Output<String> policyVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Type of access policy. Must be `data`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  ServerlessAccessPolicy(
    String name, {
    ServerlessAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessAccessPolicy:ServerlessAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.policyVersion = registerOutput<String>('policyVersion');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
