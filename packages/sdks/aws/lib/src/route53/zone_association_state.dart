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
    pulumi.Output<String>? owningAccount,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcRegion,
    pulumi.Output<String>? zoneId,
  }) :
      owningAccount = pulumi.Input.asOptionalInput<String>(owningAccount),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcRegion = pulumi.Input.asOptionalInput<String>(vpcRegion),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      owningAccount: map['owningAccount'] == null ? null : pulumi.Output.create<String>(map['owningAccount'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcRegion: map['vpcRegion'] == null ? null : pulumi.Output.create<String>(map['vpcRegion'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

