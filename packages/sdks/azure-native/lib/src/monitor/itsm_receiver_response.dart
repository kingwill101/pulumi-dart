// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Itsm receiver.
class ItsmReceiverResponse {
  /// Unique identification of ITSM connection among multiple defined in above workspace.
  final pulumi.Input<String> connectionId;

  /// The name of the Itsm receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;

  /// Region in which workspace resides. Supported values:'centralindia','japaneast','southeastasia','australiasoutheast','uksouth','westcentralus','canadacentral','eastus','westeurope'
  final pulumi.Input<String> region;

  /// JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  final pulumi.Input<String> ticketConfiguration;

  /// OMS LA instance identifier.
  final pulumi.Input<String> workspaceId;

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
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      ticketConfiguration: pulumi.Input.fromValue(
        map['ticketConfiguration'] as String,
      ),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
