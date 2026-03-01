// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterInterfaceConnection resources.
class RouterInterfaceConnectionState {
  /// One side router interface ID.
  final pulumi.Input<String>? interfaceId;
  /// Another side router interface ID. It must belong the specified "opposite_interface_owner_id" account.
  final pulumi.Input<String>? oppositeInterfaceId;
  /// Another side router interface account ID. Log on to the Alibaba Cloud console, select User Info > Account Management to check the account ID. Default to Provider account_id.
  final pulumi.Input<String>? oppositeInterfaceOwnerId;
  /// Another side router ID. It must belong the specified "opposite_interface_owner_id" account. It is valid when field "opposite_interface_owner_id" is specified.
  final pulumi.Input<String>? oppositeRouterId;
  /// Another side router Type. Optional value: VRouter, VBR. It is valid when field "opposite_interface_owner_id" is specified.
  ///
  /// > **NOTE:** The value of "opposite_interface_owner_id" or "account_id" must be main account and not be sub account.
  final pulumi.Input<String>? oppositeRouterType;

  /// Creates a new [RouterInterfaceConnectionState].
  /// [interfaceId] One side router interface ID.
  /// [oppositeInterfaceId] Another side router interface ID. It must belong the specified "opposite_interface_owner_id" account.
  /// [oppositeInterfaceOwnerId] Another side router interface account ID. Log on to the Alibaba Cloud console, select User Info > Account Management to check the account ID. Default to Provider account_id.
  /// [oppositeRouterId] Another side router ID. It must belong the specified "opposite_interface_owner_id" account. It is valid when field "opposite_interface_owner_id" is specified.
  /// [oppositeRouterType] Another side router Type. Optional value: VRouter, VBR. It is valid when field "opposite_interface_owner_id" is specified.
  RouterInterfaceConnectionState({
    pulumi.Output<String>? interfaceId,
    pulumi.Output<String>? oppositeInterfaceId,
    pulumi.Output<String>? oppositeInterfaceOwnerId,
    pulumi.Output<String>? oppositeRouterId,
    pulumi.Output<String>? oppositeRouterType,
  }) :
      interfaceId = pulumi.Input.asOptionalInput<String>(interfaceId),
      oppositeInterfaceId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceId),
      oppositeInterfaceOwnerId = pulumi.Input.asOptionalInput<String>(oppositeInterfaceOwnerId),
      oppositeRouterId = pulumi.Input.asOptionalInput<String>(oppositeRouterId),
      oppositeRouterType = pulumi.Input.asOptionalInput<String>(oppositeRouterType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
      'oppositeInterfaceId': ?oppositeInterfaceId,
      'oppositeInterfaceOwnerId': ?oppositeInterfaceOwnerId,
      'oppositeRouterId': ?oppositeRouterId,
      'oppositeRouterType': ?oppositeRouterType,
    };
  }

  factory RouterInterfaceConnectionState.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceConnectionState(
      interfaceId: map['interfaceId'] == null ? null : pulumi.Output.create<String>(map['interfaceId'] as String),
      oppositeInterfaceId: map['oppositeInterfaceId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceId'] as String),
      oppositeInterfaceOwnerId: map['oppositeInterfaceOwnerId'] == null ? null : pulumi.Output.create<String>(map['oppositeInterfaceOwnerId'] as String),
      oppositeRouterId: map['oppositeRouterId'] == null ? null : pulumi.Output.create<String>(map['oppositeRouterId'] as String),
      oppositeRouterType: map['oppositeRouterType'] == null ? null : pulumi.Output.create<String>(map['oppositeRouterType'] as String),
    );
  }
}

