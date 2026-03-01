// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_credentials_properties.dart';

/// {@template pulumi_containerregistry_token_args_doc}
/// The set of arguments for Token.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_token_args_doc}
class TokenArgs {
  /// The credentials that can be used for authenticating the token.
  final pulumi.Input<TokenCredentialsProperties>? credentials;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource ID of the scope map to which the token will be associated with.
  final pulumi.Input<String>? scopeMapId;
  /// The status of the token example enabled or disabled.
  final pulumi.Input<String>? status;
  /// The name of the token.
  final pulumi.Input<String>? tokenName;

  /// Creates a new [TokenArgs].
  /// [credentials] The credentials that can be used for authenticating the token.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeMapId] The resource ID of the scope map to which the token will be associated with.
  /// [status] The status of the token example enabled or disabled.
  /// [tokenName] The name of the token.
  TokenArgs({
    TokenCredentialsProperties? credentials,
    required String registryName,
    required String resourceGroupName,
    String? scopeMapId,
    String? status,
    String? tokenName,
  }) :
      credentials = pulumi.Input.asOptionalInput<TokenCredentialsProperties>(credentials),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeMapId = pulumi.Input.asOptionalInput<String>(scopeMapId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tokenName = pulumi.Input.asOptionalInput<String>(tokenName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<TokenCredentialsProperties, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'scopeMapId': ?scopeMapId,
      'status': ?status,
      'tokenName': ?tokenName,
    };
  }

  factory TokenArgs.fromMap(Map<String, dynamic> map) {
    return TokenArgs(
      credentials: map['credentials'] == null ? null : TokenCredentialsProperties.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopeMapId: map['scopeMapId'] == null ? null : map['scopeMapId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tokenName: map['tokenName'] == null ? null : map['tokenName'] as String,
    );
  }
}

