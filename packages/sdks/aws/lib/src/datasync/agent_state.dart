// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Agent resources.
class AgentState {
  /// DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  final pulumi.Input<String>? activationKey;

  /// Amazon Resource Name (ARN) of the DataSync Agent.
  final pulumi.Input<String>? arn;

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

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  final pulumi.Input<String>? vpcEndpointId;

  /// Creates a new [AgentState].
  /// [activationKey] DataSync Agent activation key during resource creation. Conflicts with `ip_address`. If an `ip_address` is provided instead, the provider will retrieve the `activation_key` as part of the resource creation.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Agent.
  /// [ipAddress] DataSync Agent IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. DataSync Agent must be accessible on port 80 from where the provider is running.
  /// [name] Name of the DataSync Agent.
  /// [privateLinkEndpoint] The IP address of the VPC endpoint the agent should connect to when retrieving an activation key during resource creation. Conflicts with `activation_key`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The ARNs of the security groups used to protect your data transfer task subnets.
  /// [subnetArns] The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Agent. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcEndpointId] The ID of the VPC (virtual private cloud) endpoint that the agent has access to.
  AgentState({
    this.activationKey,
    this.arn,
    this.ipAddress,
    this.name,
    this.privateLinkEndpoint,
    this.region,
    this.securityGroupArns,
    this.subnetArns,
    this.tags,
    this.tagsAll,
    this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationKey': ?activationKey,
      'arn': ?arn,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'privateLinkEndpoint': ?privateLinkEndpoint,
      'region': ?region,
      'securityGroupArns': ?securityGroupArns,
      'subnetArns': ?subnetArns,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory AgentState.fromMap(Map<String, dynamic> map) {
    return AgentState(
      activationKey: (() {
        final guardedValue = map['activationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkEndpoint: (() {
        final guardedValue = map['privateLinkEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupArns: (() {
        final guardedValue = map['securityGroupArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subnetArns: (() {
        final guardedValue = map['subnetArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcEndpointId: (() {
        final guardedValue = map['vpcEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
