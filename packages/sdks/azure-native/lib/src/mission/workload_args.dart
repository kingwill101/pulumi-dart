// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_workload_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_mission_workload_args_doc}
class WorkloadArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// List of resource group ids.
  final pulumi.Input<List<String>>? resourceGroupCollection;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String> virtualEnclaveName;
  /// The name of the workloadResource Resource
  final pulumi.Input<String>? workloadName;

  /// Creates a new [WorkloadArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupCollection] List of resource group ids.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  /// [workloadName] The name of the workloadResource Resource
  const WorkloadArgs({
    this.location,
    this.resourceGroupCollection,
    required this.resourceGroupName,
    this.tags,
    required this.virtualEnclaveName,
    this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupCollection': ?resourceGroupCollection,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualEnclaveName': virtualEnclaveName,
      'workloadName': ?workloadName,
    };
  }

  factory WorkloadArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupCollection: (() { final guardedValue = map['resourceGroupCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualEnclaveName: pulumi.Input.fromValue(map['virtualEnclaveName'] as String),
      workloadName: (() { final guardedValue = map['workloadName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

