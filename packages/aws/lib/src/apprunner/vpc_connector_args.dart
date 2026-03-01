// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apprunner_vpc_connector_vpc_connector_args_doc}
/// The set of arguments for VpcConnector.
/// {@endtemplate}
/// {@macro pulumi_apprunner_vpc_connector_vpc_connector_args_doc}
class VpcConnectorArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  final pulumi.Input<List<String>> securityGroups;

  /// List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  final pulumi.Input<List<String>> subnets;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name for the VPC connector.
  final pulumi.Input<String> vpcConnectorName;

  /// Creates a new [VpcConnectorArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  /// [subnets] List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConnectorName] Name for the VPC connector.
  VpcConnectorArgs({
    String? region,
    required List<String> securityGroups,
    required List<String> subnets,
    Map<String, String>? tags,
    required String vpcConnectorName,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       securityGroups = pulumi.Input.asInput<List<String>>(securityGroups),
       subnets = pulumi.Input.asInput<List<String>>(subnets),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vpcConnectorName = pulumi.Input.asInput<String>(vpcConnectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'securityGroups': securityGroups,
      'subnets': subnets,
      'tags': ?tags,
      'vpcConnectorName': vpcConnectorName,
    };
  }

  factory VpcConnectorArgs.fromMap(Map<String, dynamic> map) {
    return VpcConnectorArgs(
      region: map['region'] == null ? null : map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcConnectorName: map['vpcConnectorName'] as String,
    );
  }
}
