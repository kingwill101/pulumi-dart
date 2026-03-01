// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_read_only_following_database_args_doc}
/// The set of arguments for ReadOnlyFollowingDatabase.
/// {@endtemplate}
/// {@macro pulumi_kusto_read_only_following_database_args_doc}
class ReadOnlyFollowingDatabaseArgs {
  /// By default, any user who run operation on a database become an Admin on it. This property allows the caller to exclude the caller from Admins list.
  final pulumi.Input<String>? callerRole;
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String>? databaseName;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final pulumi.Input<String>? hotCachePeriod;
  /// Kind of the database
  /// Expected value is 'ReadOnlyFollowing'.
  final pulumi.Input<String> kind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ReadOnlyFollowingDatabaseArgs].
  /// [callerRole] By default, any user who run operation on a database become an Admin on it. This property allows the caller to exclude the caller from Admins list.
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [hotCachePeriod] The time the data should be kept in cache for fast queries in TimeSpan.
  /// [kind] Kind of the database
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ReadOnlyFollowingDatabaseArgs({
    String? callerRole,
    required String clusterName,
    String? databaseName,
    String? hotCachePeriod,
    required String kind,
    String? location,
    required String resourceGroupName,
  }) :
      callerRole = pulumi.Input.asOptionalInput<String>(callerRole),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      hotCachePeriod = pulumi.Input.asOptionalInput<String>(hotCachePeriod),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callerRole': ?callerRole,
      'clusterName': clusterName,
      'databaseName': ?databaseName,
      'hotCachePeriod': ?hotCachePeriod,
      'kind': kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ReadOnlyFollowingDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ReadOnlyFollowingDatabaseArgs(
      callerRole: map['callerRole'] == null ? null : map['callerRole'] as String,
      clusterName: map['clusterName'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      hotCachePeriod: map['hotCachePeriod'] == null ? null : map['hotCachePeriod'] as String,
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

