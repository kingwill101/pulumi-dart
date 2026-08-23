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
  const ConnectionAssociationState({
    this.connectionId,
    this.lagId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'lagId': ?lagId,
      'region': ?region,
    };
  }

  factory ConnectionAssociationState.fromMap(Map<String, dynamic> map) {
    return ConnectionAssociationState(
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lagId: (() { final guardedValue = map['lagId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
