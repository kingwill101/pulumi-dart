// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_parameters.dart';
import 'connection_network_parameters.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The parameters that are configured for authentication. See `auth_parameters` below.
  final pulumi.Input<ConnectionAuthParameters>? authParameters;

  /// The name of the connection.
  final pulumi.Input<String>? connectionName;

  /// The creation time of the Connection.
  final pulumi.Input<String>? createTime;

  /// The description of the connection.
  final pulumi.Input<String>? description;

  /// The parameters that are configured for the network. See `network_parameters` below.
  final pulumi.Input<ConnectionNetworkParameters>? networkParameters;

  /// Creates a new [ConnectionState].
  /// [authParameters] The parameters that are configured for authentication. See `auth_parameters` below.
  /// [connectionName] The name of the connection.
  /// [createTime] The creation time of the Connection.
  /// [description] The description of the connection.
  /// [networkParameters] The parameters that are configured for the network. See `network_parameters` below.
  ConnectionState({
    this.authParameters,
    this.connectionName,
    this.createTime,
    this.description,
    this.networkParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthParameters,
            Map<String, dynamic>
          >(authParameters, (value) => value.toMap()),
      'connectionName': ?connectionName,
      'createTime': ?createTime,
      'description': ?description,
      'networkParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionNetworkParameters,
            Map<String, dynamic>
          >(networkParameters, (value) => value.toMap()),
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      authParameters: (() {
        final guardedValue = map['authParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionName: (() {
        final guardedValue = map['connectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkParameters: (() {
        final guardedValue = map['networkParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionNetworkParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
