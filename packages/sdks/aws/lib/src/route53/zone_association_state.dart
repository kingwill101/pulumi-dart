// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneAssociation resources.
class ZoneAssociationState {
  /// The account ID of the account that created the hosted zone.
  final pulumi.Input<String>? owningAccount;
  /// The VPC to associate with the private hosted zone.
  final pulumi.Input<String>? vpcId;
  /// The VPC's region. Defaults to the region of the AWS provider.
  final pulumi.Input<String>? vpcRegion;
  /// The private hosted zone to associate.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ZoneAssociationState].
  /// [owningAccount] The account ID of the account that created the hosted zone.
  /// [vpcId] The VPC to associate with the private hosted zone.
  /// [vpcRegion] The VPC's region. Defaults to the region of the AWS provider.
  /// [zoneId] The private hosted zone to associate.
  ZoneAssociationState({
    this.owningAccount,
    this.vpcId,
    this.vpcRegion,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owningAccount': ?owningAccount,
      'vpcId': ?vpcId,
      'vpcRegion': ?vpcRegion,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneAssociationState.fromMap(Map<String, dynamic> map) {
    return ZoneAssociationState(
      owningAccount: map['owningAccount'] == null ? null : ((map['owningAccount'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
      vpcRegion: map['vpcRegion'] == null ? null : ((map['vpcRegion'] as String).input()).input(),
      zoneId: map['zoneId'] == null ? null : ((map['zoneId'] as String).input()).input(),
    );
  }
}

