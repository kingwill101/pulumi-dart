// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_reference_response.dart';

/// Properties related to ServiceBus.
class ServiceBusResponse {
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final pulumi.Input<String>? authenticationType;

  /// Time when the Endpoint was added to DigitalTwinsInstance.
  final pulumi.Input<String> createdTime;

  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? deadLetterSecret;

  /// Dead letter storage URL for identity-based authentication.
  final pulumi.Input<String>? deadLetterUri;

  /// The type of Digital Twins endpoint
  /// Expected value is 'ServiceBus'.
  final pulumi.Input<String> endpointType;

  /// The URL of the ServiceBus namespace for identity-based authentication. It must include the protocol 'sb://'.
  final pulumi.Input<String>? endpointUri;

  /// The ServiceBus Topic name for identity-based authentication.
  final pulumi.Input<String>? entityPath;

  /// Managed identity properties for the endpoint.
  final pulumi.Input<ManagedIdentityReferenceResponse>? identity;

  /// PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? primaryConnectionString;

  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String>? secondaryConnectionString;

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
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentityReferenceResponse,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'primaryConnectionString': ?primaryConnectionString,
      'provisioningState': provisioningState,
      'secondaryConnectionString': ?secondaryConnectionString,
    };
  }

  factory ServiceBusResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusResponse(
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
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
      endpointUri: (() {
        final guardedValue = map['endpointUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityPath: (() {
        final guardedValue = map['entityPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentityReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primaryConnectionString: (() {
        final guardedValue = map['primaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      secondaryConnectionString: (() {
        final guardedValue = map['secondaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
