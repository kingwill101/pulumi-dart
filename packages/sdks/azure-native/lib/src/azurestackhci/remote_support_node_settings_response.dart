// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Remote Support Node Settings of the cluster.
class RemoteSupportNodeSettingsResponse {
  /// Arc ResourceId of the Node
  final pulumi.Input<String> arcResourceId;
  /// Remote Support Access Connection Error Message on the Node
  final pulumi.Input<String> connectionErrorMessage;
  /// Remote Support Access Connection Status on the Node
  final pulumi.Input<String> connectionStatus;
  /// Remote Support Enablement Request Created TimeStamp on the Node
  final pulumi.Input<String> createdAt;
  /// Remote Support Access Connection State on the Node
  final pulumi.Input<String> state;
  /// Remote Support Transcript location on the node
  final pulumi.Input<String> transcriptLocation;
  /// Remote Support Enablement Request Updated TimeStamp on the Node
  final pulumi.Input<String> updatedAt;

  /// Creates a new [RemoteSupportNodeSettingsResponse].
  /// [arcResourceId] Arc ResourceId of the Node
  /// [connectionErrorMessage] Remote Support Access Connection Error Message on the Node
  /// [connectionStatus] Remote Support Access Connection Status on the Node
  /// [createdAt] Remote Support Enablement Request Created TimeStamp on the Node
  /// [state] Remote Support Access Connection State on the Node
  /// [transcriptLocation] Remote Support Transcript location on the node
  /// [updatedAt] Remote Support Enablement Request Updated TimeStamp on the Node
  const RemoteSupportNodeSettingsResponse({
    required this.arcResourceId,
    required this.connectionErrorMessage,
    required this.connectionStatus,
    required this.createdAt,
    required this.state,
    required this.transcriptLocation,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcResourceId': arcResourceId,
      'connectionErrorMessage': connectionErrorMessage,
      'connectionStatus': connectionStatus,
      'createdAt': createdAt,
      'state': state,
      'transcriptLocation': transcriptLocation,
      'updatedAt': updatedAt,
    };
  }

  factory RemoteSupportNodeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RemoteSupportNodeSettingsResponse(
      arcResourceId: pulumi.Input.fromValue(map['arcResourceId'] as String),
      connectionErrorMessage: pulumi.Input.fromValue(map['connectionErrorMessage'] as String),
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      transcriptLocation: pulumi.Input.fromValue(map['transcriptLocation'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
