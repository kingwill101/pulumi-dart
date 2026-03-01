// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_dns_alias_args_doc}
/// Arguments for getServerDnsAlias.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_dns_alias_args_doc}
class GetServerDnsAliasArgs {
  /// The name of the server dns alias.
  final pulumi.Input<String> dnsAliasName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server that the alias is pointing to.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerDnsAliasArgs].
  /// [dnsAliasName] The name of the server dns alias.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server that the alias is pointing to.
  GetServerDnsAliasArgs({
    required String dnsAliasName,
    required String resourceGroupName,
    required String serverName,
  }) :
      dnsAliasName = pulumi.Input.asInput<String>(dnsAliasName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAliasName': dnsAliasName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerDnsAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetServerDnsAliasArgs(
      dnsAliasName: map['dnsAliasName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

