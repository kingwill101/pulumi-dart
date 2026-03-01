// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_db_servers_get_db_servers_args_doc}
/// Arguments for getDbServers.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_db_servers_get_db_servers_args_doc}
class GetDbServersArgs {
  /// The name of the Cloud Exadata Infrastructure.
  final pulumi.Input<String> cloudExadataInfrastructureName;
  /// The name of the Resource Group where the DB Server exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDbServersArgs].
  /// [cloudExadataInfrastructureName] The name of the Cloud Exadata Infrastructure.
  /// [resourceGroupName] The name of the Resource Group where the DB Server exists.
  GetDbServersArgs({
    required String cloudExadataInfrastructureName,
    required String resourceGroupName,
  }) :
      cloudExadataInfrastructureName = pulumi.Input.asInput<String>(cloudExadataInfrastructureName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureName': cloudExadataInfrastructureName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDbServersArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServersArgs(
      cloudExadataInfrastructureName: map['cloudExadataInfrastructureName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

