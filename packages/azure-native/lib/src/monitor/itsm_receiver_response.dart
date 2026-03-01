// ignore_for_file: unused_element, unnecessary_cast


/// An Itsm receiver.
class ItsmReceiverResponse {
  /// Unique identification of ITSM connection among multiple defined in above workspace.
  final String connectionId;
  /// The name of the Itsm receiver. Names must be unique across all receivers within an action group.
  final String name;
  /// Region in which workspace resides. Supported values:'centralindia','japaneast','southeastasia','australiasoutheast','uksouth','westcentralus','canadacentral','eastus','westeurope'
  final String region;
  /// JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  final String ticketConfiguration;
  /// OMS LA instance identifier.
  final String workspaceId;

  /// Creates a new [ItsmReceiverResponse].
  /// [connectionId] Unique identification of ITSM connection among multiple defined in above workspace.
  /// [name] The name of the Itsm receiver. Names must be unique across all receivers within an action group.
  /// [region] Region in which workspace resides. Supported values:'centralindia','japaneast','southeastasia','australiasoutheast','uksouth','westcentralus','canadacentral','eastus','westeurope'
  /// [ticketConfiguration] JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  /// [workspaceId] OMS LA instance identifier.
  ItsmReceiverResponse({
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

  factory ItsmReceiverResponse.fromMap(Map<String, dynamic> map) {
    return ItsmReceiverResponse(
      connectionId: map['connectionId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      ticketConfiguration: map['ticketConfiguration'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

