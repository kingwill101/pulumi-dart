// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesconfiguration_get_private_link_scope_args_doc}
/// Arguments for getPrivateLinkScope.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_get_private_link_scope_args_doc}
class GetPrivateLinkScopeArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Arc PrivateLinkScope resource.
  final pulumi.Input<String> scopeName;

  /// Creates a new [GetPrivateLinkScopeArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeName] The name of the Azure Arc PrivateLinkScope resource.
  GetPrivateLinkScopeArgs({
    required this.resourceGroupName,
    required this.scopeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scopeName': scopeName,
    };
  }

  factory GetPrivateLinkScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopeArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeName: pulumi.Input.fromValue(map['scopeName'] as String),
    );
  }
}

