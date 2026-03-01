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
  DppResourceGuardProxyArgs({
    pulumi.Output<ResourceGuardProxyBase>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceGuardProxyName,
    required pulumi.Output<String> vaultName,
  }) :
      properties = pulumi.Input.asOptionalInput<ResourceGuardProxyBase>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceGuardProxyName = pulumi.Input.asOptionalInput<String>(resourceGuardProxyName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

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
      properties: map['properties'] == null ? null : pulumi.Output.create<ResourceGuardProxyBase>(ResourceGuardProxyBase.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceGuardProxyName: map['resourceGuardProxyName'] == null ? null : pulumi.Output.create<String>(map['resourceGuardProxyName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

