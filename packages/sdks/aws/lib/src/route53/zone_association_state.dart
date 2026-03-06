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
  const ZoneAssociationState({
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
      owningAccount: (() { final guardedValue = map['owningAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcRegion: (() { final guardedValue = map['vpcRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

