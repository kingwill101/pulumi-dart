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
    this.callerRole,
    required this.clusterName,
    this.databaseName,
    this.hotCachePeriod,
    required this.kind,
    this.location,
    required this.resourceGroupName,
  });

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
      callerRole: map['callerRole'] == null ? null : (map['callerRole']! as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      hotCachePeriod: map['hotCachePeriod'] == null ? null : (map['hotCachePeriod']! as String).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

