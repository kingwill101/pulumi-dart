// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_reference_response.dart';

/// Properties related to EventGrid.
class EventGridResponse {
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final pulumi.Input<String> accessKey1;
  /// EventGrid secondary accesskey. Will be obfuscated during read.
  final pulumi.Input<String?>? accessKey2;
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final pulumi.Input<String?>? authenticationType;
  /// Time when the Endpoint was added to DigitalTwinsInstance.
  final pulumi.Input<String> createdTime;
  /// Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  final pulumi.Input<String?>? deadLetterSecret;
  /// Dead letter storage URL for identity-based authentication.
  final pulumi.Input<String?>? deadLetterUri;
  /// The type of Digital Twins endpoint
  /// Expected value is 'EventGrid'.
  final pulumi.Input<String> endpointType;
  /// Managed identity properties for the endpoint.
  final pulumi.Input<ManagedIdentityReferenceResponse?>? identity;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;
  /// EventGrid Topic Endpoint.
  final pulumi.Input<String> topicEndpoint;

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
  const EventGridResponse({
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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityReferenceResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'topicEndpoint': topicEndpoint,
    };
  }

  factory EventGridResponse.fromMap(Map<String, dynamic> map) {
    return EventGridResponse(
      accessKey1: pulumi.Input.fromValue(map['accessKey1'] as String),
      accessKey2: (() { final guardedValue = map['accessKey2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      deadLetterSecret: (() { final guardedValue = map['deadLetterSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deadLetterUri: (() { final guardedValue = map['deadLetterUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      topicEndpoint: pulumi.Input.fromValue(map['topicEndpoint'] as String),
    );
  }
}
