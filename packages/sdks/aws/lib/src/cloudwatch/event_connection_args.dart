// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters.dart';
import 'event_connection_invocation_connectivity_parameters.dart';

/// {@template pulumi_cloudwatch_event_connection_event_connection_args_doc}
/// The set of arguments for EventConnection.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_event_connection_event_connection_args_doc}
class EventConnectionArgs {
  /// Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  final pulumi.Input<EventConnectionAuthParameters> authParameters;
  /// Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  final pulumi.Input<String> authorizationType;
  /// Description for the connection. Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// Parameters to use for invoking a private API. Documented below.
  final pulumi.Input<EventConnectionInvocationConnectivityParameters>? invocationConnectivityParameters;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventConnectionArgs].
  /// [authParameters] Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  /// [authorizationType] Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  /// [description] Description for the connection. Maximum of 512 characters.
  /// [invocationConnectivityParameters] Parameters to use for invoking a private API. Documented below.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  /// [name] The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventConnectionArgs({
    required pulumi.Output<EventConnectionAuthParameters> authParameters,
    required pulumi.Output<String> authorizationType,
    pulumi.Output<String>? description,
    pulumi.Output<EventConnectionInvocationConnectivityParameters>? invocationConnectivityParameters,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      authParameters = pulumi.Input.asInput<EventConnectionAuthParameters>(authParameters),
      authorizationType = pulumi.Input.asInput<String>(authorizationType),
      description = pulumi.Input.asOptionalInput<String>(description),
      invocationConnectivityParameters = pulumi.Input.asOptionalInput<EventConnectionInvocationConnectivityParameters>(invocationConnectivityParameters),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authParameters': pulumi.Input.mapInputValue<EventConnectionAuthParameters, Map<String, dynamic>>(authParameters, (value) => value.toMap()),
      'authorizationType': authorizationType,
      'description': ?description,
      'invocationConnectivityParameters': ?pulumi.Input.mapOptionalInputValue<EventConnectionInvocationConnectivityParameters, Map<String, dynamic>>(invocationConnectivityParameters, (value) => value.toMap()),
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'name': ?name,
      'region': ?region,
    };
  }

  factory EventConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventConnectionArgs(
      authParameters: pulumi.Output.create<EventConnectionAuthParameters>(EventConnectionAuthParameters.fromMap((map['authParameters'] as Map).cast<String, dynamic>())),
      authorizationType: pulumi.Output.create<String>(map['authorizationType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      invocationConnectivityParameters: map['invocationConnectivityParameters'] == null ? null : pulumi.Output.create<EventConnectionInvocationConnectivityParameters>(EventConnectionInvocationConnectivityParameters.fromMap((map['invocationConnectivityParameters'] as Map).cast<String, dynamic>())),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

