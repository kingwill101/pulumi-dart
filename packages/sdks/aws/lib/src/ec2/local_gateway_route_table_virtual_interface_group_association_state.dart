// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalGatewayRouteTableVirtualInterfaceGroupAssociation resources.
class LocalGatewayRouteTableVirtualInterfaceGroupAssociationState {
  /// Identifier of the EC2 Local Gateway.
  final pulumi.Input<String?>? localGatewayId;
  /// ARN of the EC2 Local Gateway Route Table.
  final pulumi.Input<String?>? localGatewayRouteTableArn;
  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String?>? localGatewayRouteTableId;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? localGatewayVirtualInterfaceGroupId;
  /// Identifier of the AWS account that owns the EC2 Local Gateway Virtual Interface Group Association.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of the EC2 Local Gateway Route Table Virtual Interface Group Association.
  final pulumi.Input<String?>? state;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [LocalGatewayRouteTableVirtualInterfaceGroupAssociationState].
  /// [localGatewayId] Identifier of the EC2 Local Gateway.
  /// [localGatewayRouteTableArn] ARN of the EC2 Local Gateway Route Table.
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [localGatewayVirtualInterfaceGroupId] Identifier of EC2 Local Gateway Virtual Interface Group.
  /// [ownerId] Identifier of the AWS account that owns the EC2 Local Gateway Virtual Interface Group Association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the EC2 Local Gateway Route Table Virtual Interface Group Association.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const LocalGatewayRouteTableVirtualInterfaceGroupAssociationState({
    this.localGatewayId,
    this.localGatewayRouteTableArn,
    this.localGatewayRouteTableId,
    this.localGatewayVirtualInterfaceGroupId,
    this.ownerId,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localGatewayId': ?localGatewayId,
      'localGatewayRouteTableArn': ?localGatewayRouteTableArn,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'localGatewayVirtualInterfaceGroupId': ?localGatewayVirtualInterfaceGroupId,
      'ownerId': ?ownerId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LocalGatewayRouteTableVirtualInterfaceGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteTableVirtualInterfaceGroupAssociationState(
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayRouteTableArn: (() { final guardedValue = map['localGatewayRouteTableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayRouteTableId: (() { final guardedValue = map['localGatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayVirtualInterfaceGroupId: (() { final guardedValue = map['localGatewayVirtualInterfaceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
