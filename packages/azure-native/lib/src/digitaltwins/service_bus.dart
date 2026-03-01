// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_reference.dart';

/// Properties related to ServiceBus.
class ServiceBus {
  /// Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  final String? authenticationType;
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
  final ManagedIdentityReference? identity;
  /// PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final String? primaryConnectionString;
  /// SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  final String? secondaryConnectionString;

  /// Creates a new [ServiceBus].
  /// [authenticationType] Specifies the authentication type being used for connecting to the endpoint. Defaults to 'KeyBased'. If 'KeyBased' is selected, a connection string must be specified (at least the primary connection string). If 'IdentityBased' is select, the endpointUri and entityPath properties must be specified.
  /// [deadLetterSecret] Dead letter storage secret for key-based authentication. Will be obfuscated during read.
  /// [deadLetterUri] Dead letter storage URL for identity-based authentication.
  /// [endpointType] The type of Digital Twins endpoint
  /// [endpointUri] The URL of the ServiceBus namespace for identity-based authentication. It must include the protocol 'sb://'.
  /// [entityPath] The ServiceBus Topic name for identity-based authentication.
  /// [identity] Managed identity properties for the endpoint.
  /// [primaryConnectionString] PrimaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  /// [secondaryConnectionString] SecondaryConnectionString of the endpoint for key-based authentication. Will be obfuscated during read.
  ServiceBus({
    this.authenticationType,
    this.deadLetterSecret,
    this.deadLetterUri,
    required this.endpointType,
    this.endpointUri,
    this.entityPath,
    this.identity,
    this.primaryConnectionString,
    this.secondaryConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'deadLetterSecret': ?deadLetterSecret,
      'deadLetterUri': ?deadLetterUri,
      'endpointType': endpointType,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'identity': ?identity == null ? null : identity!.toMap(),
      'primaryConnectionString': ?primaryConnectionString,
      'secondaryConnectionString': ?secondaryConnectionString,
    };
  }

  factory ServiceBus.fromMap(Map<String, dynamic> map) {
    return ServiceBus(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      deadLetterSecret: map['deadLetterSecret'] == null ? null : map['deadLetterSecret'] as String,
      deadLetterUri: map['deadLetterUri'] == null ? null : map['deadLetterUri'] as String,
      endpointType: map['endpointType'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      entityPath: map['entityPath'] == null ? null : map['entityPath'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityReference.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : map['primaryConnectionString'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : map['secondaryConnectionString'] as String,
    );
  }
}

