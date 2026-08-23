// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_workload_args_doc}
/// Arguments for getWorkload.
/// {@endtemplate}
/// {@macro pulumi_mission_get_workload_args_doc}
class GetWorkloadArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String> virtualEnclaveName;
  /// The name of the workloadResource Resource
  final pulumi.Input<String> workloadName;

  /// Creates a new [GetWorkloadArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  /// [workloadName] The name of the workloadResource Resource
  const GetWorkloadArgs({
    required this.resourceGroupName,
    required this.virtualEnclaveName,
    required this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualEnclaveName': virtualEnclaveName,
      'workloadName': workloadName,
    };
  }

  factory GetWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualEnclaveName: pulumi.Input.fromValue(map['virtualEnclaveName'] as String),
      workloadName: pulumi.Input.fromValue(map['workloadName'] as String),
    );
  }
}
