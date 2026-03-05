// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_postgres_instance_args_doc}
/// Arguments for getPostgresInstance.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_postgres_instance_args_doc}
class GetPostgresInstanceArgs {
  /// Name of Postgres Instance
  final pulumi.Input<String> postgresInstanceName;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPostgresInstanceArgs].
  /// [postgresInstanceName] Name of Postgres Instance
  /// [resourceGroupName] The name of the Azure resource group
  GetPostgresInstanceArgs({
    required this.postgresInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresInstanceName': postgresInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPostgresInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetPostgresInstanceArgs(
      postgresInstanceName: pulumi.Input.fromValue(map['postgresInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

