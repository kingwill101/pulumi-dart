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
    pulumi.Output<ConnectionAuthParameters>? authParameters,
    pulumi.Output<String>? connectionName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<ConnectionNetworkParameters>? networkParameters,
  }) :
      authParameters = pulumi.Input.asOptionalInput<ConnectionAuthParameters>(authParameters),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      networkParameters = pulumi.Input.asOptionalInput<ConnectionNetworkParameters>(networkParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authParameters': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthParameters, Map<String, dynamic>>(authParameters, (value) => value.toMap()),
      'connectionName': ?connectionName,
      'createTime': ?createTime,
      'description': ?description,
      'networkParameters': ?pulumi.Input.mapOptionalInputValue<ConnectionNetworkParameters, Map<String, dynamic>>(networkParameters, (value) => value.toMap()),
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      authParameters: map['authParameters'] == null ? null : pulumi.Output.create<ConnectionAuthParameters>(ConnectionAuthParameters.fromMap((map['authParameters'] as Map).cast<String, dynamic>())),
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkParameters: map['networkParameters'] == null ? null : pulumi.Output.create<ConnectionNetworkParameters>(ConnectionNetworkParameters.fromMap((map['networkParameters'] as Map).cast<String, dynamic>())),
    );
  }
}

