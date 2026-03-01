// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_elastic_snapshot_args_doc}
/// The set of arguments for ElasticSnapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_snapshot_args_doc}
class ElasticSnapshotArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticCapacityPool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ElasticSnapshot
  final pulumi.Input<String>? snapshotName;
  /// The name of the ElasticVolume
  final pulumi.Input<String> volumeName;

  /// Creates a new [ElasticSnapshotArgs].
  /// [accountName] The name of the ElasticAccount
  /// [poolName] The name of the ElasticCapacityPool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the ElasticSnapshot
  /// [volumeName] The name of the ElasticVolume
  ElasticSnapshotArgs({
    required String accountName,
    required String poolName,
    required String resourceGroupName,
    String? snapshotName,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'snapshotName': ?snapshotName,
      'volumeName': volumeName,
    };
  }

  factory ElasticSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotArgs(
      accountName: map['accountName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      snapshotName: map['snapshotName'] == null ? null : map['snapshotName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

