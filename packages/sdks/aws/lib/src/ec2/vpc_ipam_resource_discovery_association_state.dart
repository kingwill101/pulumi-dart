// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpamResourceDiscoveryAssociation resources.
class VpcIpamResourceDiscoveryAssociationState {
  /// The Amazon Resource Name (ARN) of IPAM Resource Discovery Association.
  final pulumi.Input<String>? arn;
  /// The Amazon Resource Name (ARN) of the IPAM.
  final pulumi.Input<String>? ipamArn;
  /// The ID of the IPAM to associate.
  final pulumi.Input<String>? ipamId;
  /// The home region of the IPAM.
  final pulumi.Input<String>? ipamRegion;
  /// The ID of the Resource Discovery to associate.
  final pulumi.Input<String>? ipamResourceDiscoveryId;
  /// A boolean to identify if the Resource Discovery is the accounts default resource discovery.
  final pulumi.Input<bool>? isDefault;
  /// The account ID for the account that manages the Resource Discovery
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The lifecycle state of the association when you associate or disassociate a resource discovery.
  final pulumi.Input<String>? state;
  /// A map of tags to add to the IPAM resource discovery association resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIpamResourceDiscoveryAssociationState].
  /// [arn] The Amazon Resource Name (ARN) of IPAM Resource Discovery Association.
  /// [ipamArn] The Amazon Resource Name (ARN) of the IPAM.
  /// [ipamId] The ID of the IPAM to associate.
  /// [ipamRegion] The home region of the IPAM.
  /// [ipamResourceDiscoveryId] The ID of the Resource Discovery to associate.
  /// [isDefault] A boolean to identify if the Resource Discovery is the accounts default resource discovery.
  /// [ownerId] The account ID for the account that manages the Resource Discovery
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The lifecycle state of the association when you associate or disassociate a resource discovery.
  /// [tags] A map of tags to add to the IPAM resource discovery association resource.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VpcIpamResourceDiscoveryAssociationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? ipamArn,
    pulumi.Output<String>? ipamId,
    pulumi.Output<String>? ipamRegion,
    pulumi.Output<String>? ipamResourceDiscoveryId,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ipamArn = pulumi.Input.asOptionalInput<String>(ipamArn),
      ipamId = pulumi.Input.asOptionalInput<String>(ipamId),
      ipamRegion = pulumi.Input.asOptionalInput<String>(ipamRegion),
      ipamResourceDiscoveryId = pulumi.Input.asOptionalInput<String>(ipamResourceDiscoveryId),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ipamArn': ?ipamArn,
      'ipamId': ?ipamId,
      'ipamRegion': ?ipamRegion,
      'ipamResourceDiscoveryId': ?ipamResourceDiscoveryId,
      'isDefault': ?isDefault,
      'ownerId': ?ownerId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VpcIpamResourceDiscoveryAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryAssociationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ipamArn: map['ipamArn'] == null ? null : pulumi.Output.create<String>(map['ipamArn'] as String),
      ipamId: map['ipamId'] == null ? null : pulumi.Output.create<String>(map['ipamId'] as String),
      ipamRegion: map['ipamRegion'] == null ? null : pulumi.Output.create<String>(map['ipamRegion'] as String),
      ipamResourceDiscoveryId: map['ipamResourceDiscoveryId'] == null ? null : pulumi.Output.create<String>(map['ipamResourceDiscoveryId'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

