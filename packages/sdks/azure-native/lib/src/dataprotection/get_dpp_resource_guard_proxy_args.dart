// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_get_dpp_resource_guard_proxy_args_doc}
/// Arguments for getDppResourceGuardProxy.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_get_dpp_resource_guard_proxy_args_doc}
class GetDppResourceGuardProxyArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// name of the resource guard proxy
  final pulumi.Input<String> resourceGuardProxyName;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetDppResourceGuardProxyArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceGuardProxyName] name of the resource guard proxy
  /// [vaultName] The name of the backup vault.
  GetDppResourceGuardProxyArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceGuardProxyName,
    required pulumi.Output<String> vaultName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceGuardProxyName = pulumi.Input.asInput<String>(resourceGuardProxyName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceGuardProxyName': resourceGuardProxyName,
      'vaultName': vaultName,
    };
  }

  factory GetDppResourceGuardProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetDppResourceGuardProxyArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceGuardProxyName: pulumi.Output.create<String>(map['resourceGuardProxyName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

