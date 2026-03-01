// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters.dart';
import 'event_connection_invocation_connectivity_parameters.dart';

/// Input properties used for looking up and filtering EventConnection resources.
class EventConnectionState {
  /// The Amazon Resource Name (ARN) of the connection.
  final pulumi.Input<String>? arn;
  /// Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  final pulumi.Input<EventConnectionAuthParameters>? authParameters;
  /// Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  final pulumi.Input<String>? authorizationType;
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
  /// The Amazon Resource Name (ARN) of the secret created from the authorization parameters specified for the connection.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [EventConnectionState].
  /// [arn] The Amazon Resource Name (ARN) of the connection.
  /// [authParameters] Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  /// [authorizationType] Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  /// [description] Description for the connection. Maximum of 512 characters.
  /// [invocationConnectivityParameters] Parameters to use for invoking a private API. Documented below.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  /// [name] The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret created from the authorization parameters specified for the connection.
  EventConnectionState({
    pulumi.Output<String>? arn,
    pulumi.Output<EventConnectionAuthParameters>? authParameters,
    pulumi.Output<String>? authorizationType,
    pulumi.Output<String>? description,
    pulumi.Output<EventConnectionInvocationConnectivityParameters>? invocationConnectivityParameters,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authParameters = pulumi.Input.asOptionalInput<EventConnectionAuthParameters>(authParameters),
      authorizationType = pulumi.Input.asOptionalInput<String>(authorizationType),
      description = pulumi.Input.asOptionalInput<String>(description),
      invocationConnectivityParameters = pulumi.Input.asOptionalInput<EventConnectionInvocationConnectivityParameters>(invocationConnectivityParameters),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretArn = pulumi.Input.asOptionalInput<String>(secretArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authParameters': ?pulumi.Input.mapOptionalInputValue<EventConnectionAuthParameters, Map<String, dynamic>>(authParameters, (value) => value.toMap()),
      'authorizationType': ?authorizationType,
      'description': ?description,
      'invocationConnectivityParameters': ?pulumi.Input.mapOptionalInputValue<EventConnectionInvocationConnectivityParameters, Map<String, dynamic>>(invocationConnectivityParameters, (value) => value.toMap()),
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'name': ?name,
      'region': ?region,
      'secretArn': ?secretArn,
    };
  }

  factory EventConnectionState.fromMap(Map<String, dynamic> map) {
    return EventConnectionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authParameters: map['authParameters'] == null ? null : pulumi.Output.create<EventConnectionAuthParameters>(EventConnectionAuthParameters.fromMap((map['authParameters'] as Map).cast<String, dynamic>())),
      authorizationType: map['authorizationType'] == null ? null : pulumi.Output.create<String>(map['authorizationType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      invocationConnectivityParameters: map['invocationConnectivityParameters'] == null ? null : pulumi.Output.create<EventConnectionInvocationConnectivityParameters>(EventConnectionInvocationConnectivityParameters.fromMap((map['invocationConnectivityParameters'] as Map).cast<String, dynamic>())),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretArn: map['secretArn'] == null ? null : pulumi.Output.create<String>(map['secretArn'] as String),
    );
  }
}

