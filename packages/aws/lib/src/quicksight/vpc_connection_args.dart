// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connection_timeouts.dart';

/// {@template pulumi_quicksight_vpc_connection_vpc_connection_args_doc}
/// The set of arguments for VpcConnection.
/// {@endtemplate}
/// {@macro pulumi_quicksight_vpc_connection_vpc_connection_args_doc}
class VpcConnectionArgs {
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

  /// Creates a new [VpcConnectionArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dnsResolvers] A list of IP addresses of DNS resolver endpoints for the VPC connection.
  /// [name] The display name for the VPC connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role to associate with the VPC connection.
  /// [securityGroupIds] A list of security group IDs for the VPC connection.
  /// [subnetIds] A list of subnet IDs for the VPC connection.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcConnectionId] The ID of the VPC connection.
  VpcConnectionArgs({
    String? awsAccountId,
    List<String>? dnsResolvers,
    String? name,
    String? region,
    required String roleArn,
    required List<String> securityGroupIds,
    required List<String> subnetIds,
    Map<String, String>? tags,
    VpcConnectionTimeouts? timeouts,
    required String vpcConnectionId,
  }) : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
       dnsResolvers = pulumi.Input.asOptionalInput<List<String>>(dnsResolvers),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       securityGroupIds = pulumi.Input.asInput<List<String>>(securityGroupIds),
       subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<VpcConnectionTimeouts>(timeouts),
       vpcConnectionId = pulumi.Input.asInput<String>(vpcConnectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'dnsResolvers': ?dnsResolvers,
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            VpcConnectionTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vpcConnectionId': vpcConnectionId,
    };
  }

  factory VpcConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcConnectionArgs(
      awsAccountId: map['awsAccountId'] == null
          ? null
          : map['awsAccountId'] as String,
      dnsResolvers: map['dnsResolvers'] == null
          ? null
          : (map['dnsResolvers'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : VpcConnectionTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      vpcConnectionId: map['vpcConnectionId'] as String,
    );
  }
}
