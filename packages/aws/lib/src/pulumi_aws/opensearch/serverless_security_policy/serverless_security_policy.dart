import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_policy_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Security Policy. See AWS documentation for [encryption policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html#serverless-encryption-policies) and [network policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html#serverless-network-policies).
///
/// ## Example Usage
///
/// ### Encryption Security Policy
///
/// ### Applies to a single collection
///
///
///
/// ### Applies to multiple collections
///
///
///
/// ### Using a customer managed key
///
///
///
/// ### Network Security Policy
///
/// ### Allow public access to the collection endpoint and the Dashboards endpoint
///
///
///
/// ### Allow VPC access to the collection endpoint and the Dashboards endpoint
///
///
///
/// ### Mixed access for different collections
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Security Policy using the `name` and `type` arguments separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessSecurityPolicy:ServerlessSecurityPolicy example example/encryption
/// ```
class ServerlessSecurityPolicy extends pulumi.CustomResource {
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

  /// Type of security policy. One of `encryption` or `network`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  ServerlessSecurityPolicy(
    String name, {
    ServerlessSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessSecurityPolicy:ServerlessSecurityPolicy',
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
