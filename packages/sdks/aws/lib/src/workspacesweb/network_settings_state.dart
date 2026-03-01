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
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<String>? networkSettingsArn,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      networkSettingsArn = pulumi.Input.asOptionalInput<String>(networkSettingsArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      networkSettingsArn: map['networkSettingsArn'] == null ? null : pulumi.Output.create<String>(map['networkSettingsArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

