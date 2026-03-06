// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_proxy_base.dart';

/// {@template pulumi_dataprotection_dpp_resource_guard_proxy_args_doc}
/// The set of arguments for DppResourceGuardProxy.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_dpp_resource_guard_proxy_args_doc}
class DppResourceGuardProxyArgs {
  /// ResourceGuardProxyBaseResource properties
  final pulumi.Input<ResourceGuardProxyBase>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// name of the resource guard proxy
  final pulumi.Input<String>? resourceGuardProxyName;
  /// The name of the backup vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [DppResourceGuardProxyArgs].
  /// [properties] ResourceGuardProxyBaseResource properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceGuardProxyName] name of the resource guard proxy
  /// [vaultName] The name of the backup vault.
  const DppResourceGuardProxyArgs({
    this.properties,
    required this.resourceGroupName,
    this.resourceGuardProxyName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<ResourceGuardProxyBase, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceGuardProxyName': ?resourceGuardProxyName,
      'vaultName': vaultName,
    };
  }

  factory DppResourceGuardProxyArgs.fromMap(Map<String, dynamic> map) {
    return DppResourceGuardProxyArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceGuardProxyBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceGuardProxyName: (() { final guardedValue = map['resourceGuardProxyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}

