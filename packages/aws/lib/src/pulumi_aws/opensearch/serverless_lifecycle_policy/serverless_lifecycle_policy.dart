import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_lifecycle_policy_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Lifecycle Policy. See AWS documentation for [lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Serverless Lifecycle Policy using the `name` and `type` arguments separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessLifecyclePolicy:ServerlessLifecyclePolicy example example/retention
/// ```
class ServerlessLifecyclePolicy extends pulumi.CustomResource {
  /// Description of the policy.
  late final pulumi.Output<String?> description;

  /// Name of the policy.
  late final pulumi.Output<String> name;

  /// JSON policy document to use as the content for the new policy.
  late final pulumi.Output<String> policy;

  /// Version of the policy.
  late final pulumi.Output<String> policyVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Type of lifecycle policy. Must be `retention`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  ServerlessLifecyclePolicy(
    String name, {
    ServerlessLifecyclePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessLifecyclePolicy:ServerlessLifecyclePolicy',
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
