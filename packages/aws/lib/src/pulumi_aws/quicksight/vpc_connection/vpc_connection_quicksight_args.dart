// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_connection_timeouts/vpc_connection_timeouts.dart';

/// The set of arguments for VpcConnection.
class VpcConnectionQuicksightArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// A list of IP addresses of DNS resolver endpoints for the VPC connection.
  final pulumi.Input<List<String>>? dnsResolvers;

  /// The display name for the VPC connection.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The IAM role to associate with the VPC connection.
  final pulumi.Input<String> roleArn;

  /// A list of security group IDs for the VPC connection.
  final pulumi.Input<List<String>> securityGroupIds;

  /// A list of subnet IDs for the VPC connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> subnetIds;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<VpcConnectionTimeouts>? timeouts;

  /// The ID of the VPC connection.
  final pulumi.Input<String> vpcConnectionId;

  VpcConnectionQuicksightArgs({
    this.awsAccountId,
    this.dnsResolvers,
    this.name,
    this.region,
    required this.roleArn,
    required this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    this.timeouts,
    required this.vpcConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final dnsResolversValue = dnsResolvers;
    if (dnsResolversValue != null) {
      map['dnsResolvers'] = dnsResolversValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          VpcConnectionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcConnectionId'] = vpcConnectionId;
    return map;
  }

  factory VpcConnectionQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return VpcConnectionQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      dnsResolvers:
          pulumi.Input.asOptionalInput<List<String>>(map['dnsResolvers']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      securityGroupIds:
          pulumi.Input.asInput<List<String>>(map['securityGroupIds']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<VpcConnectionTimeouts>(map['timeouts']),
      vpcConnectionId: pulumi.Input.asInput<String>(map['vpcConnectionId']),
    );
  }
}
