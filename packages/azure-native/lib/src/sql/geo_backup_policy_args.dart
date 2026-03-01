// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_backup_policy_state.dart';

/// {@template pulumi_sql_geo_backup_policy_args_doc}
/// The set of arguments for GeoBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_geo_backup_policy_args_doc}
class GeoBackupPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the Geo backup policy. This should always be 'Default'.
  final pulumi.Input<String>? geoBackupPolicyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The state of the geo backup policy.
  final pulumi.Input<GeoBackupPolicyState> state;

  /// Creates a new [GeoBackupPolicyArgs].
  /// [databaseName] The name of the database.
  /// [geoBackupPolicyName] The name of the Geo backup policy. This should always be 'Default'.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [state] The state of the geo backup policy.
  GeoBackupPolicyArgs({
    required String databaseName,
    String? geoBackupPolicyName,
    required String resourceGroupName,
    required String serverName,
    required GeoBackupPolicyState state,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      geoBackupPolicyName = pulumi.Input.asOptionalInput<String>(geoBackupPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      state = pulumi.Input.asInput<GeoBackupPolicyState>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'geoBackupPolicyName': ?geoBackupPolicyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'state': pulumi.Input.mapInputValue<GeoBackupPolicyState, String>(state, (value) => value.value),
    };
  }

  factory GeoBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GeoBackupPolicyArgs(
      databaseName: map['databaseName'] as String,
      geoBackupPolicyName: map['geoBackupPolicyName'] == null ? null : map['geoBackupPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      state: GeoBackupPolicyState.fromValue(map['state'] as String),
    );
  }
}

