// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// {@template pulumi_kusto_read_write_database_args_doc}
/// The set of arguments for ReadWriteDatabase.
/// {@endtemplate}
/// {@macro pulumi_kusto_read_write_database_args_doc}
class ReadWriteDatabaseArgs {
  /// By default, any user who run operation on a database become an Admin on it. This property allows the caller to exclude the caller from Admins list.
  final pulumi.Input<String>? callerRole;
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String>? databaseName;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final pulumi.Input<String>? hotCachePeriod;
  /// KeyVault properties for the database encryption.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;
  /// Kind of the database
  /// Expected value is 'ReadWrite'.
  final pulumi.Input<String> kind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  final pulumi.Input<String>? softDeletePeriod;

  /// Creates a new [ReadWriteDatabaseArgs].
  /// [callerRole] By default, any user who run operation on a database become an Admin on it. This property allows the caller to exclude the caller from Admins list.
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [hotCachePeriod] The time the data should be kept in cache for fast queries in TimeSpan.
  /// [keyVaultProperties] KeyVault properties for the database encryption.
  /// [kind] Kind of the database
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries in TimeSpan.
  ReadWriteDatabaseArgs({
    this.callerRole,
    required this.clusterName,
    this.databaseName,
    this.hotCachePeriod,
    this.keyVaultProperties,
    required this.kind,
    this.location,
    required this.resourceGroupName,
    this.softDeletePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callerRole': ?callerRole,
      'clusterName': clusterName,
      'databaseName': ?databaseName,
      'hotCachePeriod': ?hotCachePeriod,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'softDeletePeriod': ?softDeletePeriod,
    };
  }

  factory ReadWriteDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ReadWriteDatabaseArgs(
      callerRole: map['callerRole'] == null ? null : (map['callerRole']! as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : (map['hotCachePeriod']! as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultProperties.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      softDeletePeriod: map['softDeletePeriod'] == null ? null : (map['softDeletePeriod']! as String).input(),
    );
  }
}

