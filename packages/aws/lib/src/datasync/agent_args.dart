// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datasync_agent_agent_args_doc}
/// The set of arguments for Agent.
/// {@endtemplate}
/// {@macro pulumi_datasync_agent_agent_args_doc}
class AgentArgs {
  /// DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  final pulumi.Input<String>? activationKey;

  /// DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. DataSync Agent must be accessible on port 80 from where the provider is running.
  final pulumi.Input<String>? ipAddress;

  /// Name of the DataSync Agent.
  final pulumi.Input<String>? name;

  /// The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with `activation_key`.
  final pulumi.Input<String>? privateLinkEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARNs of the security groups used to protect your data transfer task subnets.
  final pulumi.Input<List<String>>? securityGroupArns;

  /// The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
  final pulumi.Input<List<String>>? subnetArns;

  /// Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  final pulumi.Input<String>? vpcEndpointId;

  /// Creates a new [AgentArgs].
  /// [activationKey] DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  /// [ipAddress] DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. DataSync Agent must be accessible on port 80 from where the provider is running.
  /// [name] Name of the DataSync Agent.
  /// [privateLinkEndpoint] The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with `activation_key`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The ARNs of the security groups used to protect your data transfer task subnets.
  /// [subnetArns] The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcEndpointId] The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  AgentArgs({
    String? activationKey,
    String? ipAddress,
    String? name,
    String? privateLinkEndpoint,
    String? region,
    List<String>? securityGroupArns,
    List<String>? subnetArns,
    Map<String, String>? tags,
    String? vpcEndpointId,
  }) : activationKey = pulumi.Input.asOptionalInput<String>(activationKey),
       ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
       name = pulumi.Input.asOptionalInput<String>(name),
       privateLinkEndpoint = pulumi.Input.asOptionalInput<String>(
         privateLinkEndpoint,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupArns = pulumi.Input.asOptionalInput<List<String>>(
         securityGroupArns,
       ),
       subnetArns = pulumi.Input.asOptionalInput<List<String>>(subnetArns),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationKey': ?activationKey,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'privateLinkEndpoint': ?privateLinkEndpoint,
      'region': ?region,
      'securityGroupArns': ?securityGroupArns,
      'subnetArns': ?subnetArns,
      'tags': ?tags,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      activationKey: map['activationKey'] == null
          ? null
          : map['activationKey'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateLinkEndpoint: map['privateLinkEndpoint'] == null
          ? null
          : map['privateLinkEndpoint'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupArns: map['securityGroupArns'] == null
          ? null
          : (map['securityGroupArns'] as List).cast<String>(),
      subnetArns: map['subnetArns'] == null
          ? null
          : (map['subnetArns'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcEndpointId: map['vpcEndpointId'] == null
          ? null
          : map['vpcEndpointId'] as String,
    );
  }
}
