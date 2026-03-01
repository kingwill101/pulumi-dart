// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_elastic_pool_args_doc}
/// Arguments for getElasticPool.
/// {@endtemplate}
/// {@macro pulumi_sql_get_elastic_pool_args_doc}
class GetElasticPoolArgs {
  /// The name of the elastic pool.
  final pulumi.Input<String> elasticPoolName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetElasticPoolArgs].
  /// [elasticPoolName] The name of the elastic pool.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetElasticPoolArgs({
    required String elasticPoolName,
    required String resourceGroupName,
    required String serverName,
  }) :
      elasticPoolName = pulumi.Input.asInput<String>(elasticPoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticPoolName': elasticPoolName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetElasticPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolArgs(
      elasticPoolName: map['elasticPoolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

