// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_parameters.dart';
import 'connection_network_parameters.dart';

/// {@template pulumi_eventbridge_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_connection_connection_args_doc}
class ConnectionArgs {
  /// The parameters that are configured for authentication. See `auth_parameters` below.
  final pulumi.Input<ConnectionAuthParameters>? authParameters;
  /// The name of the connection.
  final pulumi.Input<String> connectionName;
  /// The description of the connection.
  final pulumi.Input<String>? description;
  /// The parameters that are configured for the network. See `network_parameters` below.
  final pulumi.Input<ConnectionNetworkParameters> networkParameters;

  /// Creates a new [ConnectionArgs].
  /// [authParameters] The parameters that are configured for authentication. See `auth_parameters` below.
  /// [connectionName] The name of the connection.
  /// [description] The description of the connection.
  /// [networkParameters] The parameters that are configured for the network. See `network_parameters` below.
  ConnectionArgs({
    pulumi.Output<ConnectionAuthParameters>? authParameters,
    required pulumi.Output<String> connectionName,
    pulumi.Output<String>? description,
    required pulumi.Output<ConnectionNetworkParameters> networkParameters,
  }) :
      authParameters = pulumi.Input.asOptionalInput<ConnectionAuthParameters>(authParameters),
      connectionName = pulumi.Input.asInput<String>(connectionName),
      description = pulumi.Input.asOptionalInput<String>(description),
      networkParameters = pulumi.Input.asInput<ConnectionNetworkParameters>(networkParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authParameters': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthParameters, Map<String, dynamic>>(authParameters, (value) => value.toMap()),
      'connectionName': connectionName,
      'description': ?description,
      'networkParameters': pulumi.Input.mapInputValue<ConnectionNetworkParameters, Map<String, dynamic>>(networkParameters, (value) => value.toMap()),
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      authParameters: map['authParameters'] == null ? null : pulumi.Output.create<ConnectionAuthParameters>(ConnectionAuthParameters.fromMap((map['authParameters'] as Map).cast<String, dynamic>())),
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkParameters: pulumi.Output.create<ConnectionNetworkParameters>(ConnectionNetworkParameters.fromMap((map['networkParameters'] as Map).cast<String, dynamic>())),
    );
  }
}

