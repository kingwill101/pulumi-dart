// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the settings of a remote support node.
class RemoteSupportJobNodeSettingsResponse {
  /// The error message, if any, from the last connection attempt.
  final pulumi.Input<String> connectionErrorMessage;
  /// The current connection status of the remote support session.
  final pulumi.Input<String> connectionStatus;
  /// The timestamp when the node settings were created, in UTC.
  final pulumi.Input<String> createdAt;
  /// The state of the remote support node.
  final pulumi.Input<String> state;
  /// The timestamp when the node settings were last updated, in UTC.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [RemoteSupportJobNodeSettingsResponse].
  /// [connectionErrorMessage] The error message, if any, from the last connection attempt.
  /// [connectionStatus] The current connection status of the remote support session.
  /// [createdAt] The timestamp when the node settings were created, in UTC.
  /// [state] The state of the remote support node.
  /// [updatedAt] The timestamp when the node settings were last updated, in UTC.
  RemoteSupportJobNodeSettingsResponse({
    required this.connectionErrorMessage,
    required this.connectionStatus,
    required this.createdAt,
    required this.state,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionErrorMessage': connectionErrorMessage,
      'connectionStatus': connectionStatus,
      'createdAt': createdAt,
      'state': state,
      'updatedAt': updatedAt,
    };
  }

  factory RemoteSupportJobNodeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RemoteSupportJobNodeSettingsResponse(
      connectionErrorMessage: (map['connectionErrorMessage'] as String).input(),
      connectionStatus: (map['connectionStatus'] as String).input(),
      createdAt: (map['createdAt'] as String).input(),
      state: (map['state'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
    );
  }
}

