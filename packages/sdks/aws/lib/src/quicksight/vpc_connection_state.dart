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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityStatus,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<List<String>>? dnsResolvers,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<VpcConnectionTimeouts>? timeouts,
    pulumi.Output<String>? vpcConnectionId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityStatus = pulumi.Input.asOptionalInput<String>(availabilityStatus),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      dnsResolvers = pulumi.Input.asOptionalInput<List<String>>(dnsResolvers),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<VpcConnectionTimeouts>(timeouts),
      vpcConnectionId = pulumi.Input.asOptionalInput<String>(vpcConnectionId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityStatus: map['availabilityStatus'] == null ? null : pulumi.Output.create<String>(map['availabilityStatus'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      dnsResolvers: map['dnsResolvers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsResolvers'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VpcConnectionTimeouts>(VpcConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcConnectionId: map['vpcConnectionId'] == null ? null : pulumi.Output.create<String>(map['vpcConnectionId'] as String),
    );
  }
}

