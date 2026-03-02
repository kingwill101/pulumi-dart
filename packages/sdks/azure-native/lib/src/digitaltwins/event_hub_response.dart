// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_reference_response.dart';

/// Properties related to EventHub.
class EventHubResponse {
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final pulumi.Input<String>? authenticationType;
  /// PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? connectionStringPrimaryKey;
  /// SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? connectionStringSecondaryKey;
  /// Time when the Endpoint was added to DigitalTwinsInstance.
  final pulumi.Input<String> createdTime;
  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? deadLetterSecret;
  /// Dead letter storage URL for identity-based authentication.
  final pulumi.Input<String>? deadLetterUri;
  /// The type of Digital Twins endpoint
  /// Expected value is 'EventHub'.
  final pulumi.Input<String> endpointType;
  /// The URL of the EventHub namespace for identity-based authentication. It must include the protocol 'sb://'.
  final pulumi.Input<String>? endpointUri;
  /// The EventHub name in the EventHub namespace for identity-based authentication.
  final pulumi.Input<String>? entityPath;
  /// Managed identity properties for the endpoint.
  final pulumi.Input<ManagedIdentityReferenceResponse>? identity;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityReferenceResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory EventHubResponse.fromMap(Map<String, dynamic> map) {
    return EventHubResponse(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      connectionStringPrimaryKey: map['connectionStringPrimaryKey'] == null ? null : (map['connectionStringPrimaryKey']! as String).input(),
      connectionStringSecondaryKey: map['connectionStringSecondaryKey'] == null ? null : (map['connectionStringSecondaryKey']! as String).input(),
      createdTime: (map['createdTime'] as String).input(),
      deadLetterSecret: map['deadLetterSecret'] == null ? null : (map['deadLetterSecret']! as String).input(),
      deadLetterUri: map['deadLetterUri'] == null ? null : (map['deadLetterUri']! as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      entityPath: map['entityPath'] == null ? null : (map['entityPath']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedIdentityReferenceResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

