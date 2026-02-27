// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Agent.
class AgentArgs {
  /// DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  final Input<String>? activationKey;

  /// DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. DataSync Agent must be accessible on port 80 from where the provider is running.
  final Input<String>? ipAddress;

  /// Name of the DataSync Agent.
  final Input<String>? name;

  /// The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with `activation_key`.
  final Input<String>? privateLinkEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARNs of the security groups used to protect your data transfer task subnets.
  final Input<List<String>>? securityGroupArns;

  /// The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
  final Input<List<String>>? subnetArns;

  /// Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  final Input<String>? vpcEndpointId;

  AgentArgs({
    this.activationKey,
    this.ipAddress,
    this.name,
    this.privateLinkEndpoint,
    this.region,
    this.securityGroupArns,
    this.subnetArns,
    this.tags,
    this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activationKeyValue = activationKey;
    if (activationKeyValue != null) {
      map['activationKey'] = activationKeyValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final privateLinkEndpointValue = privateLinkEndpoint;
    if (privateLinkEndpointValue != null) {
      map['privateLinkEndpoint'] = privateLinkEndpointValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupArnsValue = securityGroupArns;
    if (securityGroupArnsValue != null) {
      map['securityGroupArns'] = securityGroupArnsValue;
    }
    final subnetArnsValue = subnetArns;
    if (subnetArnsValue != null) {
      map['subnetArns'] = subnetArnsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcEndpointIdValue = vpcEndpointId;
    if (vpcEndpointIdValue != null) {
      map['vpcEndpointId'] = vpcEndpointIdValue;
    }
    return map;
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      activationKey: Input.asOptionalInput<String>(map['activationKey']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      name: Input.asOptionalInput<String>(map['name']),
      privateLinkEndpoint:
          Input.asOptionalInput<String>(map['privateLinkEndpoint']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupArns:
          Input.asOptionalInput<List<String>>(map['securityGroupArns']),
      subnetArns: Input.asOptionalInput<List<String>>(map['subnetArns']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcEndpointId: Input.asOptionalInput<String>(map['vpcEndpointId']),
    );
  }
}
