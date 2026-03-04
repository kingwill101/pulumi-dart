// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_connection_association_connection_association_args_doc}
/// The set of arguments for ConnectionAssociation.
/// {@endtemplate}
/// {@macro pulumi_directconnect_connection_association_connection_association_args_doc}
class ConnectionAssociationArgs {
  /// The ID of the connection.
  final pulumi.Input<String> connectionId;

  /// The ID of the LAG with which to associate the connection.
  final pulumi.Input<String> lagId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConnectionAssociationArgs].
  /// [connectionId] The ID of the connection.
  /// [lagId] The ID of the LAG with which to associate the connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConnectionAssociationArgs({
    required this.connectionId,
    required this.lagId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'lagId': lagId,
      'region': ?region,
    };
  }

  factory ConnectionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionAssociationArgs(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      lagId: pulumi.Input.fromValue(map['lagId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
