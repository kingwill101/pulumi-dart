// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_response.dart';
import 'system_data_response.dart';

/// Pending connection object
class PendingConnectionResponse {
  /// Approver of this connection request
  final pulumi.Input<String> approver;
  /// The timestamp that this connection request was submitted at
  final pulumi.Input<String> dateSubmitted;
  /// Direction of data movement
  final pulumi.Input<String>? direction;
  /// The flow types being requested for this connection
  final pulumi.Input<List<String>>? flowTypes;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// Justification for the connection request
  final pulumi.Input<String>? justification;
  /// Link status of the current connection
  final pulumi.Input<String> linkStatus;
  /// Resource ID of the linked connection
  final pulumi.Input<String> linkedConnectionId;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The name of the resource
  final pulumi.Input<String> name;
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
  /// Subscription ID of the pending connection.
  final pulumi.Input<String> subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [PendingConnectionResponse].
  /// [approver] Approver of this connection request
  /// [dateSubmitted] The timestamp that this connection request was submitted at
  /// [direction] Direction of data movement
  /// [flowTypes] The flow types being requested for this connection
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [justification] Justification for the connection request
  /// [linkStatus] Link status of the current connection
  /// [linkedConnectionId] Resource ID of the linked connection
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
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
  /// [subscriptionId] Subscription ID of the pending connection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PendingConnectionResponse({
    required this.approver,
    required this.dateSubmitted,
    this.direction,
    this.flowTypes,
    required this.id,
    this.justification,
    required this.linkStatus,
    required this.linkedConnectionId,
    required this.location,
    required this.name,
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
    required this.subscriptionId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approver': approver,
      'dateSubmitted': dateSubmitted,
      'direction': ?direction,
      'flowTypes': ?flowTypes,
      'id': id,
      'justification': ?justification,
      'linkStatus': linkStatus,
      'linkedConnectionId': linkedConnectionId,
      'location': location,
      'name': name,
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
      'subscriptionId': subscriptionId,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory PendingConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PendingConnectionResponse(
      approver: (map['approver'] as String).input(),
      dateSubmitted: (map['dateSubmitted'] as String).input(),
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      flowTypes: map['flowTypes'] == null ? null : ((map['flowTypes']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      justification: map['justification'] == null ? null : (map['justification']! as String).input(),
      linkStatus: (map['linkStatus'] as String).input(),
      linkedConnectionId: (map['linkedConnectionId'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      pin: map['pin'] == null ? null : (map['pin']! as String).input(),
      pipeline: (map['pipeline'] as String).input(),
      policies: map['policies'] == null ? null : ((map['policies']! as List).cast<String>()).input(),
      primaryContact: map['primaryContact'] == null ? null : (map['primaryContact']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      remoteSubscriptionId: map['remoteSubscriptionId'] == null ? null : (map['remoteSubscriptionId']! as String).input(),
      requirementId: map['requirementId'] == null ? null : (map['requirementId']! as String).input(),
      schemaUris: map['schemaUris'] == null ? null : ((map['schemaUris']! as List).cast<String>()).input(),
      schemas: map['schemas'] == null ? null : (pulumi.Input.decodeList<SchemaResponse>(map['schemas']!, (value) => SchemaResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryContacts: map['secondaryContacts'] == null ? null : ((map['secondaryContacts']! as List).cast<String>()).input(),
      status: (map['status'] as String).input(),
      statusReason: (map['statusReason'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

