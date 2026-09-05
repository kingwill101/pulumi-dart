// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_network_settings_network_settings_args_doc}
/// The set of arguments for NetworkSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_network_settings_network_settings_args_doc}
class NetworkSettingsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// One or more security groups used to control access from streaming instances to your VPC.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  final pulumi.Input<List<String>> subnetIds;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The VPC that streaming instances will connect to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  /// Creates a new [NetworkSettingsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups used to control access from streaming instances to your VPC.
  /// [subnetIds] The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The VPC that streaming instances will connect to.
  const NetworkSettingsArgs({
    this.region,
    required this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcId,
  });

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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
