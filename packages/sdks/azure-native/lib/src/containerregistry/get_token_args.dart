// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_token_args_doc}
/// Arguments for getToken.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_token_args_doc}
class GetTokenArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the token.
  final pulumi.Input<String> tokenName;

  /// Creates a new [GetTokenArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tokenName] The name of the token.
  GetTokenArgs({
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> tokenName,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tokenName = pulumi.Input.asInput<String>(tokenName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'tokenName': tokenName,
    };
  }

  factory GetTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetTokenArgs(
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tokenName: pulumi.Output.create<String>(map['tokenName'] as String),
    );
  }
}

