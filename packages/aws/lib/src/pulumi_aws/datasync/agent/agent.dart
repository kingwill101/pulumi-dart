import 'package:pulumi/pulumi.dart';
import 'agent_args.dart';

/// Manages an AWS DataSync Agent deployed on premises.
///
/// > **NOTE:** One of `activation_key` or `ip_address` must be provided for resource creation (agent activation). Neither is required for resource import. If using `ip_address`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running. The agent will turn off that HTTP server after activation.
///
/// ## Example Usage
///
///
///
///
/// ### With VPC Endpoints
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync agent.
///
///
/// Using `pulumi import`, import `aws.datasync.Agent` using the DataSync Agent Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/agent:Agent example arn:aws:datasync:us-east-1:123456789012:agent/agent-12345678901234567
/// ```
class Agent extends CustomResource {
  /// DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  late final Output<String> activationKey;

  /// Amazon Resource Name (ARN) of the DataSync Agent.
  late final Output<String> arn;

  /// DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. DataSync Agent must be accessible on port 80 from where the provider is running.
  late final Output<String> ipAddress;

  /// Name of the DataSync Agent.
  late final Output<String> name;

  /// The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with `activation_key`.
  late final Output<String> privateLinkEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARNs of the security groups used to protect your data transfer task subnets.
  late final Output<List<String>?> securityGroupArns;

  /// The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
  late final Output<List<String>?> subnetArns;

  /// Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  late final Output<String?> vpcEndpointId;

  Agent(
    String name, {
    AgentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/agent:Agent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activationKey = registerOutput<String>('activationKey');
    this.arn = registerOutput<String>('arn');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.privateLinkEndpoint = registerOutput<String>('privateLinkEndpoint');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>?>('securityGroupArns');
    this.subnetArns = registerOutput<List<String>?>('subnetArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcEndpointId = registerOutput<String?>('vpcEndpointId');
  }
}
