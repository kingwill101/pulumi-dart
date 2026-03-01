// ignore_for_file: unused_element, unnecessary_cast


/// Remote Support Node Settings of the cluster.
class RemoteSupportNodeSettingsResponse {
  /// Arc ResourceId of the Node
  final String arcResourceId;
  /// Remote Support Access Connection Error Message on the Node
  final String connectionErrorMessage;
  /// Remote Support Access Connection Status on the Node
  final String connectionStatus;
  /// Remote Support Enablement Request Created TimeStamp on the Node
  final String createdAt;
  /// Remote Support Access Connection State on the Node
  final String state;
  /// Remote Support Transcript location on the node
  final String transcriptLocation;
  /// Remote Support Enablement Request Updated TimeStamp on the Node
  final String updatedAt;

  /// Creates a new [RemoteSupportNodeSettingsResponse].
  /// [arcResourceId] Arc ResourceId of the Node
  /// [connectionErrorMessage] Remote Support Access Connection Error Message on the Node
  /// [connectionStatus] Remote Support Access Connection Status on the Node
  /// [createdAt] Remote Support Enablement Request Created TimeStamp on the Node
  /// [state] Remote Support Access Connection State on the Node
  /// [transcriptLocation] Remote Support Transcript location on the node
  /// [updatedAt] Remote Support Enablement Request Updated TimeStamp on the Node
  RemoteSupportNodeSettingsResponse({
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
      arcResourceId: map['arcResourceId'] as String,
      connectionErrorMessage: map['connectionErrorMessage'] as String,
      connectionStatus: map['connectionStatus'] as String,
      createdAt: map['createdAt'] as String,
      state: map['state'] as String,
      transcriptLocation: map['transcriptLocation'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

