// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_response.dart';

/// Properties of connection
class ConnectionPropertiesResponse {
  /// Approver of this connection request
  final String approver;
  /// The timestamp that this connection request was submitted at
  final String dateSubmitted;
  /// Direction of data movement
  final String? direction;
  /// The flow types being requested for this connection
  final List<String>? flowTypes;
  /// Justification for the connection request
  final String? justification;
  /// Link status of the current connection
  final String linkStatus;
  /// Resource ID of the linked connection
  final String linkedConnectionId;
  /// PIN to link requests together
  final String? pin;
  /// Pipeline to use to transfer data
  final String pipeline;
  /// The policies for this connection
  final List<String>? policies;
  /// The primary contact for this connection request
  final String? primaryContact;
  /// Provisioning state of the connection
  final String provisioningState;
  /// Subscription ID to link cloud subscriptions together
  final String? remoteSubscriptionId;
  /// Requirement ID of the connection
  final String? requirementId;
  /// The schema URIs for this connection
  final List<String>? schemaUris;
  /// The schemas for this connection
  final List<SchemaResponse>? schemas;
  /// The secondary contacts for this connection request
  final List<String>? secondaryContacts;
  /// Status of the connection
  final String status;
  /// Reason for status
  final String statusReason;

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
      'schemas': ?schemas == null ? null : pulumi.Input.encodeList<SchemaResponse, Map<String, dynamic>>(schemas!, (value) => value.toMap()),
      'secondaryContacts': ?secondaryContacts,
      'status': status,
      'statusReason': statusReason,
    };
  }

  factory ConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesResponse(
      approver: map['approver'] as String,
      dateSubmitted: map['dateSubmitted'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      flowTypes: map['flowTypes'] == null ? null : (map['flowTypes'] as List).cast<String>(),
      justification: map['justification'] == null ? null : map['justification'] as String,
      linkStatus: map['linkStatus'] as String,
      linkedConnectionId: map['linkedConnectionId'] as String,
      pin: map['pin'] == null ? null : map['pin'] as String,
      pipeline: map['pipeline'] as String,
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      primaryContact: map['primaryContact'] == null ? null : map['primaryContact'] as String,
      provisioningState: map['provisioningState'] as String,
      remoteSubscriptionId: map['remoteSubscriptionId'] == null ? null : map['remoteSubscriptionId'] as String,
      requirementId: map['requirementId'] == null ? null : map['requirementId'] as String,
      schemaUris: map['schemaUris'] == null ? null : (map['schemaUris'] as List).cast<String>(),
      schemas: map['schemas'] == null ? null : pulumi.Input.decodeList<SchemaResponse>(map['schemas'], (value) => SchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
      secondaryContacts: map['secondaryContacts'] == null ? null : (map['secondaryContacts'] as List).cast<String>(),
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
    );
  }
}

