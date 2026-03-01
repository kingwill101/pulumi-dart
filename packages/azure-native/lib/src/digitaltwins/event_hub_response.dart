// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_reference_response.dart';

/// Properties related to EventHub.
class EventHubResponse {
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final String? authenticationType;
  /// PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final String? connectionStringPrimaryKey;
  /// SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final String? connectionStringSecondaryKey;
  /// Time when the Endpoint was added to DigitalTwinsInstance.
  final String createdTime;
  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final String? deadLetterSecret;
  /// Dead letter storage URL for identity-based authentication.
  final String? deadLetterUri;
  /// The type of Digital Twins endpoint
  /// Expected value is 'EventHub'.
  final String endpointType;
  /// The URL of the EventHub namespace for identity-based authentication. It must include the protocol 'sb://'.
  final String? endpointUri;
  /// The EventHub name in the EventHub namespace for identity-based authentication.
  final String? entityPath;
  /// Managed identity properties for the endpoint.
  final ManagedIdentityReferenceResponse? identity;
  /// The provisioning state.
  final String provisioningState;

  /// Creates a new [EventHubResponse].
  /// [authenticationType] Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  /// [connectionStringPrimaryKey] PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  /// [connectionStringSecondaryKey] SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  /// [createdTime] Time when the Endpoint was added to DigitalTwinsInstance.
  /// [deadLetterSecret] Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  /// [deadLetterUri] Dead letter storage URL for identity-based authentication.
  /// [endpointType] The type of Digital Twins endpoint
  /// [endpointUri] The URL of the EventHub namespace for identity-based authentication. It must include the protocol 'sb://'.
  /// [entityPath] The EventHub name in the EventHub namespace for identity-based authentication.
  /// [identity] Managed identity properties for the endpoint.
  /// [provisioningState] The provisioning state.
  EventHubResponse({
    this.authenticationType,
    this.connectionStringPrimaryKey,
    this.connectionStringSecondaryKey,
    required this.createdTime,
    this.deadLetterSecret,
    this.deadLetterUri,
    required this.endpointType,
    this.endpointUri,
    this.entityPath,
    this.identity,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'connectionStringPrimaryKey': ?connectionStringPrimaryKey,
      'connectionStringSecondaryKey': ?connectionStringSecondaryKey,
      'createdTime': createdTime,
      'deadLetterSecret': ?deadLetterSecret,
      'deadLetterUri': ?deadLetterUri,
      'endpointType': endpointType,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'identity': ?identity == null ? null : identity!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory EventHubResponse.fromMap(Map<String, dynamic> map) {
    return EventHubResponse(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectionStringPrimaryKey: map['connectionStringPrimaryKey'] == null ? null : map['connectionStringPrimaryKey'] as String,
      connectionStringSecondaryKey: map['connectionStringSecondaryKey'] == null ? null : map['connectionStringSecondaryKey'] as String,
      createdTime: map['createdTime'] as String,
      deadLetterSecret: map['deadLetterSecret'] == null ? null : map['deadLetterSecret'] as String,
      deadLetterUri: map['deadLetterUri'] == null ? null : map['deadLetterUri'] as String,
      endpointType: map['endpointType'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      entityPath: map['entityPath'] == null ? null : map['entityPath'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityReferenceResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

