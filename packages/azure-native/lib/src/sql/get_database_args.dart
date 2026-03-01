// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_args_doc}
class GetDatabaseArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The child resources to include in the response.
  final pulumi.Input<String>? expand;
  /// An OData filter expression that filters elements in the collection.
  final pulumi.Input<String>? filter;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDatabaseArgs].
  /// [databaseName] The name of the database.
  /// [expand] The child resources to include in the response.
  /// [filter] An OData filter expression that filters elements in the collection.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetDatabaseArgs({
    required String databaseName,
    String? expand,
    String? filter,
    required String resourceGroupName,
    required String serverName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'expand': ?expand,
      'filter': ?filter,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      databaseName: map['databaseName'] as String,
      expand: map['expand'] == null ? null : map['expand'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

