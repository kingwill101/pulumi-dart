// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_connection_confirmation_connection_confirmation_args_doc}
/// The set of arguments for ConnectionConfirmation.
/// {@endtemplate}
/// {@macro pulumi_directconnect_connection_confirmation_connection_confirmation_args_doc}
class ConnectionConfirmationArgs {
  /// The ID of the hosted connection.
  final pulumi.Input<String> connectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConnectionConfirmationArgs].
  /// [connectionId] The ID of the hosted connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConnectionConfirmationArgs({
    required this.connectionId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'region': ?region,
    };
  }

  factory ConnectionConfirmationArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionConfirmationArgs(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

