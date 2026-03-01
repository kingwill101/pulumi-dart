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
  WorkloadArgs({
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? resourceGroupCollection,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> virtualEnclaveName,
    pulumi.Output<String>? workloadName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupCollection = pulumi.Input.asOptionalInput<List<String>>(resourceGroupCollection),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualEnclaveName = pulumi.Input.asInput<String>(virtualEnclaveName),
      workloadName = pulumi.Input.asOptionalInput<String>(workloadName);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupCollection: map['resourceGroupCollection'] == null ? null : pulumi.Output.create<List<String>>((map['resourceGroupCollection'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualEnclaveName: pulumi.Output.create<String>(map['virtualEnclaveName'] as String),
      workloadName: map['workloadName'] == null ? null : pulumi.Output.create<String>(map['workloadName'] as String),
    );
  }
}

