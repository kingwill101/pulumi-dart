import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_workload_identity_args.dart';

/// Manages an AWS Bedrock AgentCore Workload Identity. Workload Identity provides OAuth2-based authentication and authorization for AI agents to access external resources securely.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Workload Identity with Multiple Return URLs
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Workload Identity using the workload identity name. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreWorkloadIdentity:AgentcoreWorkloadIdentity example example-workload-identity
/// ```
class AgentcoreWorkloadIdentity extends pulumi.CustomResource {
  /// Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  late final pulumi.Output<List<String>?> allowedResourceOauth2ReturnUrls;

  /// Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the Workload Identity.
  late final pulumi.Output<String> workloadIdentityArn;

  AgentcoreWorkloadIdentity(
    String name, {
    AgentcoreWorkloadIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreWorkloadIdentity:AgentcoreWorkloadIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedResourceOauth2ReturnUrls =
        registerOutput<List<String>?>('allowedResourceOauth2ReturnUrls');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.workloadIdentityArn = registerOutput<String>('workloadIdentityArn');
  }
}
