// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connection_timeouts.dart';

/// Input properties used for looking up and filtering VpcConnection resources.
class VpcConnectionState {
  /// ARN of the VPC connection.
  final pulumi.Input<String>? arn;
  /// The availability status of the VPC connection. Valid values are `AVAILABLE`, `UNAVAILABLE` or `PARTIALLY_AVAILABLE`.
  final pulumi.Input<String>? availabilityStatus;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// A list of IP addresses of DNS resolver endpoints for the VPC connection.
  final pulumi.Input<List<String>>? dnsResolvers;
  /// The display name for the VPC connection.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role to associate with the VPC connection.
  final pulumi.Input<String>? roleArn;
  /// A list of security group IDs for the VPC connection.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of subnet IDs for the VPC connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<VpcConnectionTimeouts>? timeouts;
  /// The ID of the VPC connection.
  final pulumi.Input<String>? vpcConnectionId;

  /// Creates a new [VpcConnectionState].
  /// [arn] ARN of the VPC connection.
  /// [availabilityStatus] The availability status of the VPC connection. Valid values are `AVAILABLE`, `UNAVAILABLE` or `PARTIALLY_AVAILABLE`.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dnsResolvers] A list of IP addresses of DNS resolver endpoints for the VPC connection.
  /// [name] The display name for the VPC connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role to associate with the VPC connection.
  /// [securityGroupIds] A list of security group IDs for the VPC connection.
  /// [subnetIds] A list of subnet IDs for the VPC connection.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcConnectionId] The ID of the VPC connection.
  VpcConnectionState({
    this.arn,
    this.availabilityStatus,
    this.awsAccountId,
    this.dnsResolvers,
    this.name,
    this.region,
    this.roleArn,
    this.securityGroupIds,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityStatus': ?availabilityStatus,
      'awsAccountId': ?awsAccountId,
      'dnsResolvers': ?dnsResolvers,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConnectionId': ?vpcConnectionId,
    };
  }

  factory VpcConnectionState.fromMap(Map<String, dynamic> map) {
    return VpcConnectionState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityStatus: map['availabilityStatus'] == null ? null : ((map['availabilityStatus'] as String).input()).input(),
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      dnsResolvers: map['dnsResolvers'] == null ? null : (((map['dnsResolvers'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((VpcConnectionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcConnectionId: map['vpcConnectionId'] == null ? null : ((map['vpcConnectionId'] as String).input()).input(),
    );
  }
}

