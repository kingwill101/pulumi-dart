// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupItsmReceiver {
  /// The unique connection identifier of the ITSM connection.
  final String connectionId;
  /// Specifies the name of the Action Group.
  final String name;
  /// The region of the workspace.
  final String region;
  /// A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  final String ticketConfiguration;
  /// The Azure Log Analytics workspace ID where this connection is defined.
  final String workspaceId;

  /// Creates a new [GetActionGroupItsmReceiver].
  /// [connectionId] The unique connection identifier of the ITSM connection.
  /// [name] Specifies the name of the Action Group.
  /// [region] The region of the workspace.
  /// [ticketConfiguration] A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  /// [workspaceId] The Azure Log Analytics workspace ID where this connection is defined.
  GetActionGroupItsmReceiver({
    required this.connectionId,
    required this.name,
    required this.region,
    required this.ticketConfiguration,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'name': name,
      'region': region,
      'ticketConfiguration': ticketConfiguration,
      'workspaceId': workspaceId,
    };
  }

  factory GetActionGroupItsmReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupItsmReceiver(
      connectionId: map['connectionId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      ticketConfiguration: map['ticketConfiguration'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

