// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSettings resources.
class NetworkSettingsState {
  /// List of web portal ARNs associated with the network settings.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// ARN of the network settings resource.
  final pulumi.Input<String>? networkSettingsArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more security groups used to control access from streaming instances to your VPC.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VPC that streaming instances will connect to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NetworkSettingsState].
  /// [associatedPortalArns] List of web portal ARNs associated with the network settings.
  /// [networkSettingsArn] ARN of the network settings resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups used to control access from streaming instances to your VPC.
  /// [subnetIds] The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The VPC that streaming instances will connect to.
  NetworkSettingsState({
    this.associatedPortalArns,
    this.networkSettingsArn,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedPortalArns': ?associatedPortalArns,
      'networkSettingsArn': ?networkSettingsArn,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory NetworkSettingsState.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsState(
      associatedPortalArns: map['associatedPortalArns'] == null ? null : ((map['associatedPortalArns'] as List).cast<String>()).input(),
      networkSettingsArn: map['networkSettingsArn'] == null ? null : (map['networkSettingsArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

