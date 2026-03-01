// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_network_settings_network_settings_args_doc}
/// The set of arguments for NetworkSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_network_settings_network_settings_args_doc}
class NetworkSettingsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more security groups used to control access from streaming instances to your VPC.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  final pulumi.Input<List<String>> subnetIds;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC that streaming instances will connect to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  /// Creates a new [NetworkSettingsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups used to control access from streaming instances to your VPC.
  /// [subnetIds] The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The VPC that streaming instances will connect to.
  NetworkSettingsArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> securityGroupIds,
    required pulumi.Output<List<String>> subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asInput<List<String>>(securityGroupIds),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory NetworkSettingsArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

