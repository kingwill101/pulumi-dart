// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_reference.dart';

/// Properties related to EventGrid.
class EventGrid {
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final pulumi.Input<String> accessKey1;

  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final pulumi.Input<String>? accessKey2;

  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final pulumi.Input<String>? authenticationType;

  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? deadLetterSecret;

  /// Dead letter storage URL for identity-based authentication.
  final pulumi.Input<String>? deadLetterUri;

  /// The type of Digital Twins endpoint
  /// Expected value is 'EventGrid'.
  final pulumi.Input<String> endpointType;

  /// Managed identity properties for the endpoint.
  final pulumi.Input<ManagedIdentityReference>? identity;

  /// EventGrid Topic Endpoint.
  final pulumi.Input<String> topicEndpoint;

  /// Creates a new [EventGrid].
  /// [accessKey1] EventGrid secondary accesskey. Will be obfuscated during read.
  /// [accessKey2] EventGrid secondary accesskey. Will be obfuscated during read.
  /// [authenticationType] Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  /// [deadLetterSecret] Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  /// [deadLetterUri] Dead letter storage URL for identity-based authentication.
  /// [endpointType] The type of Digital Twins endpoint
  /// [identity] Managed identity properties for the endpoint.
  /// [topicEndpoint] EventGrid Topic Endpoint.
  EventGrid({
    required this.accessKey1,
    this.accessKey2,
    this.authenticationType,
    this.deadLetterSecret,
    this.deadLetterUri,
    required this.endpointType,
    this.identity,
    required this.topicEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey1': accessKey1,
      'accessKey2': ?accessKey2,
      'authenticationType': ?authenticationType,
      'deadLetterSecret': ?deadLetterSecret,
      'deadLetterUri': ?deadLetterUri,
      'endpointType': endpointType,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentityReference,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'topicEndpoint': topicEndpoint,
    };
  }

  factory EventGrid.fromMap(Map<String, dynamic> map) {
    return EventGrid(
      accessKey1: pulumi.Input.fromValue(map['accessKey1'] as String),
      accessKey2: (() {
        final guardedValue = map['accessKey2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deadLetterSecret: (() {
        final guardedValue = map['deadLetterSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deadLetterUri: (() {
        final guardedValue = map['deadLetterUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentityReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      topicEndpoint: pulumi.Input.fromValue(map['topicEndpoint'] as String),
    );
  }
}
