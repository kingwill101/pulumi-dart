// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_reference.dart';

/// Properties related to EventGrid.
class EventGrid {
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final String accessKey1;
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final String? accessKey2;
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final String? authenticationType;
  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final String? deadLetterSecret;
  /// Dead letter storage URL for identity-based authentication.
  final String? deadLetterUri;
  /// The type of Digital Twins endpoint
  /// Expected value is 'EventGrid'.
  final String endpointType;
  /// Managed identity properties for the endpoint.
  final ManagedIdentityReference? identity;
  /// EventGrid Topic Endpoint.
  final String topicEndpoint;

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
      'identity': ?identity == null ? null : identity!.toMap(),
      'topicEndpoint': topicEndpoint,
    };
  }

  factory EventGrid.fromMap(Map<String, dynamic> map) {
    return EventGrid(
      accessKey1: map['accessKey1'] as String,
      accessKey2: map['accessKey2'] == null ? null : map['accessKey2'] as String,
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      deadLetterSecret: map['deadLetterSecret'] == null ? null : map['deadLetterSecret'] as String,
      deadLetterUri: map['deadLetterUri'] == null ? null : map['deadLetterUri'] as String,
      endpointType: map['endpointType'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityReference.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      topicEndpoint: map['topicEndpoint'] as String,
    );
  }
}

