// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_reference_response.dart';

/// Properties related to EventGrid.
class EventGridResponse {
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final String accessKey1;
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final String? accessKey2;
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final String? authenticationType;
  /// Time when the Endpoint was added to DigitalTwinsInstance.
  final String createdTime;
  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final String? deadLetterSecret;
  /// Dead letter storage URL for identity-based authentication.
  final String? deadLetterUri;
  /// The type of Digital Twins endpoint
  /// Expected value is 'EventGrid'.
  final String endpointType;
  /// Managed identity properties for the endpoint.
  final ManagedIdentityReferenceResponse? identity;
  /// The provisioning state.
  final String provisioningState;
  /// EventGrid Topic Endpoint.
  final String topicEndpoint;

  /// Creates a new [EventGridResponse].
  /// [accessKey1] EventGrid secondary accesskey. Will be obfuscated during read.
  /// [accessKey2] EventGrid secondary accesskey. Will be obfuscated during read.
  /// [authenticationType] Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  /// [createdTime] Time when the Endpoint was added to DigitalTwinsInstance.
  /// [deadLetterSecret] Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  /// [deadLetterUri] Dead letter storage URL for identity-based authentication.
  /// [endpointType] The type of Digital Twins endpoint
  /// [identity] Managed identity properties for the endpoint.
  /// [provisioningState] The provisioning state.
  /// [topicEndpoint] EventGrid Topic Endpoint.
  EventGridResponse({
    required this.accessKey1,
    this.accessKey2,
    this.authenticationType,
    required this.createdTime,
    this.deadLetterSecret,
    this.deadLetterUri,
    required this.endpointType,
    this.identity,
    required this.provisioningState,
    required this.topicEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey1': accessKey1,
      'accessKey2': ?accessKey2,
      'authenticationType': ?authenticationType,
      'createdTime': createdTime,
      'deadLetterSecret': ?deadLetterSecret,
      'deadLetterUri': ?deadLetterUri,
      'endpointType': endpointType,
      'identity': ?identity == null ? null : identity!.toMap(),
      'provisioningState': provisioningState,
      'topicEndpoint': topicEndpoint,
    };
  }

  factory EventGridResponse.fromMap(Map<String, dynamic> map) {
    return EventGridResponse(
      accessKey1: map['accessKey1'] as String,
      accessKey2: map['accessKey2'] == null ? null : map['accessKey2'] as String,
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      createdTime: map['createdTime'] as String,
      deadLetterSecret: map['deadLetterSecret'] == null ? null : map['deadLetterSecret'] as String,
      deadLetterUri: map['deadLetterUri'] == null ? null : map['deadLetterUri'] as String,
      endpointType: map['endpointType'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityReferenceResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      topicEndpoint: map['topicEndpoint'] as String,
    );
  }
}

