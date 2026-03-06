// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_list_host_pool_registration_tokens_args_doc}
/// Arguments for listHostPoolRegistrationTokens.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_list_host_pool_registration_tokens_args_doc}
class ListHostPoolRegistrationTokensArgs {
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListHostPoolRegistrationTokensArgs].
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListHostPoolRegistrationTokensArgs({
    required this.hostPoolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolName': hostPoolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListHostPoolRegistrationTokensArgs.fromMap(Map<String, dynamic> map) {
    return ListHostPoolRegistrationTokensArgs(
      hostPoolName: pulumi.Input.fromValue(map['hostPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

