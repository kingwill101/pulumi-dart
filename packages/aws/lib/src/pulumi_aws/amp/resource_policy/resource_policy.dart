import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_policy_timeouts/resource_policy_timeouts.dart';
import 'resource_policy_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Resource Policy.
///
/// Resource-based policies allow you to grant permissions to other AWS accounts or services to access your Prometheus workspace. This enables cross-account access and fine-grained permissions for workspace sharing.
///
/// ## Example Usage
///
/// ### Basic Resource Policy
///
///
///
/// ### Cross-Account Access
///
///
///
/// ### Service-Specific Access
///
///
///
/// ## Supported Actions
///
/// The following actions are supported in resource policies for Prometheus workspaces:
///
/// * `aps:RemoteWrite` - Allows writing metrics to the workspace
/// * `aps:QueryMetrics` - Allows querying metrics from the workspace
/// * `aps:GetSeries` - Allows retrieving time series data
/// * `aps:GetLabels` - Allows retrieving label names and values
/// * `aps:GetMetricMetadata` - Allows retrieving metric metadata
///
/// ## Notes
///
/// * Only Prometheus-compatible APIs can be used for workspace sharing. Non-Prometheus-compatible APIs added to the policy will be ignored.
/// * If your workspace uses customer-managed KMS keys for encryption, you must grant the principals in your resource-based policy access to those KMS keys through KMS grants.
/// * The resource ARN in the policy document must match the workspace ARN that the policy is being attached to.
/// * Resource policies enable cross-account access and fine-grained permissions for Prometheus workspaces.
///
/// ## Import
///
/// Using `pulumi import`, import AMP Resource Policies using the workspace ID. For example:
///
/// ```sh
/// $ pulumi import aws:amp/resourcePolicy:ResourcePolicy example ws-12345678-90ab-cdef-1234-567890abcdef
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The revision ID of the current resource-based policy.
  late final pulumi.Output<String> revisionId;
  late final pulumi.Output<ResourcePolicyTimeouts?> timeouts;

  /// The ID of the workspace to attach the resource-based policy to.
  late final pulumi.Output<String> workspaceId;

  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyDocument = registerOutput<String>('policyDocument');
    this.region = registerOutput<String>('region');
    this.revisionId = registerOutput<String>('revisionId');
    this.timeouts = registerOutput<ResourcePolicyTimeouts?>('timeouts');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
