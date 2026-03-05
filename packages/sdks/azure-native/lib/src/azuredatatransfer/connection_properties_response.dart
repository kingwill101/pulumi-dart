// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_response.dart';

/// Properties of connection
class ConnectionPropertiesResponse {
  /// Approver of this connection request
  final pulumi.Input<String> approver;
  /// The timestamp that this connection request was submitted at
  final pulumi.Input<String> dateSubmitted;
  /// Direction of data movement
  final pulumi.Input<String>? direction;
  /// The flow types being requested for this connection
  final pulumi.Input<List<String>>? flowTypes;
  /// Justification for the connection request
  final pulumi.Input<String>? justification;
  /// Link status of the current connection
  final pulumi.Input<String> linkStatus;
  /// Resource ID of the linked connection
  final pulumi.Input<String> linkedConnectionId;
  /// PIN to link requests together
  final pulumi.Input<String>? pin;
  /// Pipeline to use to transfer data
  final pulumi.Input<String> pipeline;
  /// The policies for this connection
  final pulumi.Input<List<String>>? policies;
  /// The primary contact for this connection request
  final pulumi.Input<String>? primaryContact;
  /// Provisioning state of the connection
  final pulumi.Input<String> provisioningState;
  /// Subscription ID to link cloud subscriptions together
  final pulumi.Input<String>? remoteSubscriptionId;
  /// Requirement ID of the connection
  final pulumi.Input<String>? requirementId;
  /// The schema URIs for this connection
  final pulumi.Input<List<String>>? schemaUris;
  /// The schemas for this connection
  final pulumi.Input<List<SchemaResponse>>? schemas;
  /// The secondary contacts for this connection request
  final pulumi.Input<List<String>>? secondaryContacts;
  /// Status of the connection
  final pulumi.Input<String> status;
  /// Reason for status
  final pulumi.Input<String> statusReason;

  /// Creates a new [ConnectionPropertiesResponse].
  /// [approver] Approver of this connection request
  /// [dateSubmitted] The timestamp that this connection request was submitted at
  /// [direction] Direction of data movement
  /// [flowTypes] The flow types being requested for this connection
  /// [justification] Justification for the connection request
  /// [linkStatus] Link status of the current connection
  /// [linkedConnectionId] Resource ID of the linked connection
  /// [pin] PIN to link requests together
  /// [pipeline] Pipeline to use to transfer data
  /// [policies] The policies for this connection
  /// [primaryContact] The primary contact for this connection request
  /// [provisioningState] Provisioning state of the connection
  /// [remoteSubscriptionId] Subscription ID to link cloud subscriptions together
  /// [requirementId] Requirement ID of the connection
  /// [schemaUris] The schema URIs for this connection
  /// [schemas] The schemas for this connection
  /// [secondaryContacts] The secondary contacts for this connection request
  /// [status] Status of the connection
  /// [statusReason] Reason for status
  ConnectionPropertiesResponse({
    required this.approver,
    required this.dateSubmitted,
    this.direction,
    this.flowTypes,
    this.justification,
    required this.linkStatus,
    required this.linkedConnectionId,
    this.pin,
    required this.pipeline,
    this.policies,
    this.primaryContact,
    required this.provisioningState,
    this.remoteSubscriptionId,
    this.requirementId,
    this.schemaUris,
    this.schemas,
    this.secondaryContacts,
    required this.status,
    required this.statusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approver': approver,
      'dateSubmitted': dateSubmitted,
      'direction': ?direction,
      'flowTypes': ?flowTypes,
      'justification': ?justification,
      'linkStatus': linkStatus,
      'linkedConnectionId': linkedConnectionId,
      'pin': ?pin,
      'pipeline': pipeline,
      'policies': ?policies,
      'primaryContact': ?primaryContact,
      'provisioningState': provisioningState,
      'remoteSubscriptionId': ?remoteSubscriptionId,
      'requirementId': ?requirementId,
      'schemaUris': ?schemaUris,
      'schemas': ?pulumi.Input.mapOptionalInputValue<List<SchemaResponse>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<SchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryContacts': ?secondaryContacts,
      'status': status,
      'statusReason': statusReason,
    };
  }

  factory ConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesResponse(
      approver: pulumi.Input.fromValue(map['approver'] as String),
      dateSubmitted: pulumi.Input.fromValue(map['dateSubmitted'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowTypes: (() { final guardedValue = map['flowTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkStatus: pulumi.Input.fromValue(map['linkStatus'] as String),
      linkedConnectionId: pulumi.Input.fromValue(map['linkedConnectionId'] as String),
      pin: (() { final guardedValue = map['pin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipeline: pulumi.Input.fromValue(map['pipeline'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      remoteSubscriptionId: (() { final guardedValue = map['remoteSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementId: (() { final guardedValue = map['requirementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaUris: (() { final guardedValue = map['schemaUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SchemaResponse>(guardedValue, (value) => SchemaResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondaryContacts: (() { final guardedValue = map['secondaryContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusReason: pulumi.Input.fromValue(map['statusReason'] as String),
    );
  }
}

