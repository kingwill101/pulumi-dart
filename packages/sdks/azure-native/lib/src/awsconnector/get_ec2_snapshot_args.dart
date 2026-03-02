// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_snapshot_args_doc}
/// Arguments for getEc2Snapshot.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_snapshot_args_doc}
class GetEc2SnapshotArgs {
  /// Name of Ec2Snapshot
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2SnapshotArgs].
  /// [name] Name of Ec2Snapshot
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2SnapshotArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2SnapshotArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

