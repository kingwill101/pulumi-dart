// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_reachability_analysis_run_args_doc}
/// Arguments for getReachabilityAnalysisRun.
/// {@endtemplate}
/// {@macro pulumi_network_get_reachability_analysis_run_args_doc}
class GetReachabilityAnalysisRunArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Reachability Analysis Run name.
  final pulumi.Input<String> reachabilityAnalysisRunName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetReachabilityAnalysisRunArgs].
  /// [networkManagerName] The name of the network manager.
  /// [reachabilityAnalysisRunName] Reachability Analysis Run name.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceName] Workspace name.
  GetReachabilityAnalysisRunArgs({
    required String networkManagerName,
    required String reachabilityAnalysisRunName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      reachabilityAnalysisRunName = pulumi.Input.asInput<String>(reachabilityAnalysisRunName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'reachabilityAnalysisRunName': reachabilityAnalysisRunName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetReachabilityAnalysisRunArgs.fromMap(Map<String, dynamic> map) {
    return GetReachabilityAnalysisRunArgs(
      networkManagerName: map['networkManagerName'] as String,
      reachabilityAnalysisRunName: map['reachabilityAnalysisRunName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

