// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_reference_response.dart';

/// Properties related to ServiceBus.
class ServiceBusResponse {
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final String? authenticationType;
  /// Time when the Endpoint was added to DigitalTwinsInstance.
  final String createdTime;
  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final String? deadLetterSecret;
  /// Dead letter storage URL for identity-based authentication.
  final String? deadLetterUri;
  /// The type of Digital Twins endpoint
  /// Expected value is 'ServiceBus'.
  final String endpointType;
  /// The URL of the ServiceBus namespace for identity-based authentication. It must include the protocol 'sb://'.
  final String? endpointUri;
  /// The ServiceBus Topic name for identity-based authentication.
  final String? entityPath;
  /// Managed identity properties for the endpoint.
  final ManagedIdentityReferenceResponse? identity;
  /// PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final String? primaryConnectionString;
  /// The provisioning state.
  final String provisioningState;
  /// SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final String? secondaryConnectionString;

  /// Creates a new [ServiceBusResponse].
  /// [authenticationType] Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  /// [createdTime] Time when the Endpoint was added to DigitalTwinsInstance.
  /// [deadLetterSecret] Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  /// [deadLetterUri] Dead letter storage URL for identity-based authentication.
  /// [endpointType] The type of Digital Twins endpoint
  /// [endpointUri] The URL of the ServiceBus namespace for identity-based authentication. It must include the protocol 'sb://'.
  /// [entityPath] The ServiceBus Topic name for identity-based authentication.
  /// [identity] Managed identity properties for the endpoint.
  /// [primaryConnectionString] PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  /// [provisioningState] The provisioning state.
  /// [secondaryConnectionString] SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  ServiceBusResponse({
    this.authenticationType,
    required this.createdTime,
    this.deadLetterSecret,
    this.deadLetterUri,
    required this.endpointType,
    this.endpointUri,
    this.entityPath,
    this.identity,
    this.primaryConnectionString,
    required this.provisioningState,
    this.secondaryConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'createdTime': createdTime,
      'deadLetterSecret': ?deadLetterSecret,
      'deadLetterUri': ?deadLetterUri,
      'endpointType': endpointType,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'identity': ?identity == null ? null : identity!.toMap(),
      'primaryConnectionString': ?primaryConnectionString,
      'provisioningState': provisioningState,
      'secondaryConnectionString': ?secondaryConnectionString,
    };
  }

  factory ServiceBusResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusResponse(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      createdTime: map['createdTime'] as String,
      deadLetterSecret: map['deadLetterSecret'] == null ? null : map['deadLetterSecret'] as String,
      deadLetterUri: map['deadLetterUri'] == null ? null : map['deadLetterUri'] as String,
      endpointType: map['endpointType'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      entityPath: map['entityPath'] == null ? null : map['entityPath'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityReferenceResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : map['primaryConnectionString'] as String,
      provisioningState: map['provisioningState'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : map['secondaryConnectionString'] as String,
    );
  }
}

