// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_connection_auth_parameters/event_connection_auth_parameters.dart';
import '../event_connection_invocation_connectivity_parameters/event_connection_invocation_connectivity_parameters.dart';

/// The set of arguments for EventConnection.
class EventConnectionArgs {
  /// Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  final pulumi.Input<EventConnectionAuthParameters> authParameters;

  /// Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  final pulumi.Input<String> authorizationType;

  /// Description for the connection. Maximum of 512 characters.
  final pulumi.Input<String>? description;

  /// Parameters to use for invoking a private API. Documented below.
  final pulumi.Input<EventConnectionInvocationConnectivityParameters>?
      invocationConnectivityParameters;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final pulumi.Input<String>? kmsKeyIdentifier;

  /// The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  EventConnectionArgs({
    required this.authParameters,
    required this.authorizationType,
    this.description,
    this.invocationConnectivityParameters,
    this.kmsKeyIdentifier,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authParameters'] = pulumi.Input.mapInputValue<
        EventConnectionAuthParameters,
        Map<String, dynamic>>(authParameters, (value) => value.toMap());
    map['authorizationType'] = authorizationType;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final invocationConnectivityParametersValue =
        invocationConnectivityParameters;
    if (invocationConnectivityParametersValue != null) {
      map['invocationConnectivityParameters'] =
          pulumi.Input.mapOptionalInputValue<
                  EventConnectionInvocationConnectivityParameters,
                  Map<String, dynamic>>(
              invocationConnectivityParametersValue, (value) => value.toMap());
    }
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EventConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventConnectionArgs(
      authParameters: pulumi.Input.asInput<EventConnectionAuthParameters>(
          map['authParameters']),
      authorizationType: pulumi.Input.asInput<String>(map['authorizationType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      invocationConnectivityParameters: pulumi.Input.asOptionalInput<
              EventConnectionInvocationConnectivityParameters>(
          map['invocationConnectivityParameters']),
      kmsKeyIdentifier:
          pulumi.Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
