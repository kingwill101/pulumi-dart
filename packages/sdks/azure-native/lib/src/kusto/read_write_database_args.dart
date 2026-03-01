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
    pulumi.Output<String>? callerRole,
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? hotCachePeriod,
    pulumi.Output<KeyVaultProperties>? keyVaultProperties,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? softDeletePeriod,
  }) :
      callerRole = pulumi.Input.asOptionalInput<String>(callerRole),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      hotCachePeriod = pulumi.Input.asOptionalInput<String>(hotCachePeriod),
      keyVaultProperties = pulumi.Input.asOptionalInput<KeyVaultProperties>(keyVaultProperties),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      softDeletePeriod = pulumi.Input.asOptionalInput<String>(softDeletePeriod);

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
      callerRole: map['callerRole'] == null ? null : pulumi.Output.create<String>(map['callerRole'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : pulumi.Output.create<String>(map['hotCachePeriod'] as String),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : pulumi.Output.create<KeyVaultProperties>(KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      softDeletePeriod: map['softDeletePeriod'] == null ? null : pulumi.Output.create<String>(map['softDeletePeriod'] as String),
    );
  }
}

