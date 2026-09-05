// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpamResourceDiscoveryAssociation resources.
class VpcIpamResourceDiscoveryAssociationState {
  /// ARN of IPAM Resource Discovery Association.
  final pulumi.Input<String?>? arn;
  /// ARN of the IPAM.
  final pulumi.Input<String?>? ipamArn;
  /// The ID of the IPAM to associate.
  final pulumi.Input<String?>? ipamId;
  /// The home region of the IPAM.
  final pulumi.Input<String?>? ipamRegion;
  /// The ID of the Resource Discovery to associate.
  final pulumi.Input<String?>? ipamResourceDiscoveryId;
  /// A boolean to identify if the Resource Discovery is the accounts default resource discovery.
  final pulumi.Input<bool?>? isDefault;
  /// The account ID for the account that manages the Resource Discovery
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The lifecycle state of the association when you associate or disassociate a resource discovery.
  final pulumi.Input<String?>? state;
  /// A map of tags to add to the IPAM resource discovery association resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [VpcIpamResourceDiscoveryAssociationState].
  /// [arn] ARN of IPAM Resource Discovery Association.
  /// [ipamArn] ARN of the IPAM.
  /// [ipamId] The ID of the IPAM to associate.
  /// [ipamRegion] The home region of the IPAM.
  /// [ipamResourceDiscoveryId] The ID of the Resource Discovery to associate.
  /// [isDefault] A boolean to identify if the Resource Discovery is the accounts default resource discovery.
  /// [ownerId] The account ID for the account that manages the Resource Discovery
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The lifecycle state of the association when you associate or disassociate a resource discovery.
  /// [tags] A map of tags to add to the IPAM resource discovery association resource.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const VpcIpamResourceDiscoveryAssociationState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamArn: (() { final guardedValue = map['ipamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamId: (() { final guardedValue = map['ipamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamRegion: (() { final guardedValue = map['ipamRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamResourceDiscoveryId: (() { final guardedValue = map['ipamResourceDiscoveryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
