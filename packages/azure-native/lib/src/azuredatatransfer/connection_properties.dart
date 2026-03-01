// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema.dart';

/// Properties of connection
class ConnectionProperties {
  /// Direction of data movement
  final String? direction;
  /// The flow types being requested for this connection
  final List<String>? flowTypes;
  /// Justification for the connection request
  final String? justification;
  /// PIN to link requests together
  final String? pin;
  /// Pipeline to use to transfer data
  final String pipeline;
  /// The policies for this connection
  final List<String>? policies;
  /// The primary contact for this connection request
  final String? primaryContact;
  /// Subscription ID to link cloud subscriptions together
  final String? remoteSubscriptionId;
  /// Requirement ID of the connection
  final String? requirementId;
  /// The schema URIs for this connection
  final List<String>? schemaUris;
  /// The schemas for this connection
  final List<Schema>? schemas;
  /// The secondary contacts for this connection request
  final List<String>? secondaryContacts;

  /// Creates a new [ConnectionProperties].
  /// [direction] Direction of data movement
  /// [flowTypes] The flow types being requested for this connection
  /// [justification] Justification for the connection request
  /// [pin] PIN to link requests together
  /// [pipeline] Pipeline to use to transfer data
  /// [policies] The policies for this connection
  /// [primaryContact] The primary contact for this connection request
  /// [remoteSubscriptionId] Subscription ID to link cloud subscriptions together
  /// [requirementId] Requirement ID of the connection
  /// [schemaUris] The schema URIs for this connection
  /// [schemas] The schemas for this connection
  /// [secondaryContacts] The secondary contacts for this connection request
  ConnectionProperties({
    this.direction,
    this.flowTypes,
    this.justification,
    this.pin,
    required this.pipeline,
    this.policies,
    this.primaryContact,
    this.remoteSubscriptionId,
    this.requirementId,
    this.schemaUris,
    this.schemas,
    this.secondaryContacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'flowTypes': ?flowTypes,
      'justification': ?justification,
      'pin': ?pin,
      'pipeline': pipeline,
      'policies': ?policies,
      'primaryContact': ?primaryContact,
      'remoteSubscriptionId': ?remoteSubscriptionId,
      'requirementId': ?requirementId,
      'schemaUris': ?schemaUris,
      'schemas': ?schemas == null ? null : pulumi.Input.encodeList<Schema, Map<String, dynamic>>(schemas!, (value) => value.toMap()),
      'secondaryContacts': ?secondaryContacts,
    };
  }

  factory ConnectionProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionProperties(
      direction: map['direction'] == null ? null : map['direction'] as String,
      flowTypes: map['flowTypes'] == null ? null : (map['flowTypes'] as List).cast<String>(),
      justification: map['justification'] == null ? null : map['justification'] as String,
      pin: map['pin'] == null ? null : map['pin'] as String,
      pipeline: map['pipeline'] as String,
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      primaryContact: map['primaryContact'] == null ? null : map['primaryContact'] as String,
      remoteSubscriptionId: map['remoteSubscriptionId'] == null ? null : map['remoteSubscriptionId'] as String,
      requirementId: map['requirementId'] == null ? null : map['requirementId'] as String,
      schemaUris: map['schemaUris'] == null ? null : (map['schemaUris'] as List).cast<String>(),
      schemas: map['schemas'] == null ? null : pulumi.Input.decodeList<Schema>(map['schemas'], (value) => Schema.fromMap((value as Map).cast<String, dynamic>())),
      secondaryContacts: map['secondaryContacts'] == null ? null : (map['secondaryContacts'] as List).cast<String>(),
    );
  }
}

