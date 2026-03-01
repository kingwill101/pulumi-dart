// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectionAssociation resources.
class ConnectionAssociationState {
  /// The ID of the connection.
  final pulumi.Input<String>? connectionId;
  /// The ID of the LAG with which to associate the connection.
  final pulumi.Input<String>? lagId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConnectionAssociationState].
  /// [connectionId] The ID of the connection.
  /// [lagId] The ID of the LAG with which to associate the connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConnectionAssociationState({
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? lagId,
    pulumi.Output<String>? region,
  }) :
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      lagId = pulumi.Input.asOptionalInput<String>(lagId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'lagId': ?lagId,
      'region': ?region,
    };
  }

  factory ConnectionAssociationState.fromMap(Map<String, dynamic> map) {
    return ConnectionAssociationState(
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      lagId: map['lagId'] == null ? null : pulumi.Output.create<String>(map['lagId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

