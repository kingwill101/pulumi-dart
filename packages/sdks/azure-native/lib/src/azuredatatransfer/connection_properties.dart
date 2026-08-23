// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema.dart';

/// Properties of connection
class ConnectionProperties {
  /// Direction of data movement
  final pulumi.Input<String>? direction;
  /// The flow types being requested for this connection
  final pulumi.Input<List<String>>? flowTypes;
  /// Justification for the connection request
  final pulumi.Input<String>? justification;
  /// PIN to link requests together
  final pulumi.Input<String>? pin;
  /// Pipeline to use to transfer data
  final pulumi.Input<String> pipeline;
  /// The policies for this connection
  final pulumi.Input<List<String>>? policies;
  /// The primary contact for this connection request
  final pulumi.Input<String>? primaryContact;
  /// Subscription ID to link cloud subscriptions together
  final pulumi.Input<String>? remoteSubscriptionId;
  /// Requirement ID of the connection
  final pulumi.Input<String>? requirementId;
  /// The schema URIs for this connection
  final pulumi.Input<List<String>>? schemaUris;
  /// The schemas for this connection
  final pulumi.Input<List<Schema>>? schemas;
  /// The secondary contacts for this connection request
  final pulumi.Input<List<String>>? secondaryContacts;

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
  const ConnectionProperties({
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
      'schemas': ?pulumi.Input.mapOptionalInputValue<List<Schema>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<Schema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryContacts': ?secondaryContacts,
    };
  }

  factory ConnectionProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionProperties(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowTypes: (() { final guardedValue = map['flowTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pin: (() { final guardedValue = map['pin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipeline: pulumi.Input.fromValue(map['pipeline'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteSubscriptionId: (() { final guardedValue = map['remoteSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementId: (() { final guardedValue = map['requirementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaUris: (() { final guardedValue = map['schemaUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Schema>(guardedValue, (value) => Schema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondaryContacts: (() { final guardedValue = map['secondaryContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
