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
    this.arn,
    this.ipamArn,
    this.ipamId,
    this.ipamRegion,
    this.ipamResourceDiscoveryId,
    this.isDefault,
    this.ownerId,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      ipamArn: map['ipamArn'] == null ? null : (map['ipamArn'] as String).input(),
      ipamId: map['ipamId'] == null ? null : (map['ipamId'] as String).input(),
      ipamRegion: map['ipamRegion'] == null ? null : (map['ipamRegion'] as String).input(),
      ipamResourceDiscoveryId: map['ipamResourceDiscoveryId'] == null ? null : (map['ipamResourceDiscoveryId'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

