import 'package:pulumi/pulumi.dart' hide Config;
import 'gke_policy_response.dart';
import 'policy_args.dart';

/// Creates a platform policy, and returns a copy of it. Returns `NOT_FOUND` if the project or platform doesn't exist, `INVALID_ARGUMENT` if the request is malformed, `ALREADY_EXISTS` if the policy already exists, and `INVALID_ARGUMENT` if the policy contains a platform-specific policy that does not match the platform value specified in the URL.
/// Auto-naming is currently not supported for this resource.
class Policy extends CustomResource {
  /// Optional. A description comment about the policy.
  late final Output<String> description;

  /// Optional. GKE platform-specific policy.
  late final Output<GkePolicyResponse> gkePolicy;

  /// The relative resource name of the Binary Authorization platform policy, in the form of `projects/*/platforms/*/policies/*`.
  late final Output<String> name;
  late final Output<String> platformId;

  /// Required. The platform policy ID.
  late final Output<String> policyId;
  late final Output<String> project;

  /// Time when the policy was last updated.
  late final Output<String> updateTime;

  Policy(
    String name, {
    PolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:binaryauthorization/v1:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.gkePolicy = registerOutput<GkePolicyResponse>('gkePolicy');
    this.name = registerOutput<String>('name');
    this.platformId = registerOutput<String>('platformId');
    this.policyId = registerOutput<String>('policyId');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
