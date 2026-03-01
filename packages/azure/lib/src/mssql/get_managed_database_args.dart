// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_managed_database_get_managed_database_args_doc}
/// Arguments for getManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_managed_database_get_managed_database_args_doc}
class GetManagedDatabaseArgs {
  /// The SQL Managed Instance ID.
  final pulumi.Input<String> managedInstanceId;
  /// The name of this Azure SQL Azure Managed Database.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedDatabaseArgs].
  /// [managedInstanceId] The SQL Managed Instance ID.
  /// [name] The name of this Azure SQL Azure Managed Database.
  GetManagedDatabaseArgs({
    required String managedInstanceId,
    required String name,
  }) :
      managedInstanceId = pulumi.Input.asInput<String>(managedInstanceId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceId': managedInstanceId,
      'name': name,
    };
  }

  factory GetManagedDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseArgs(
      managedInstanceId: map['managedInstanceId'] as String,
      name: map['name'] as String,
    );
  }
}

