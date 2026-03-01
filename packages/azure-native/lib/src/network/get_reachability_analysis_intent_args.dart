// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_reachability_analysis_intent_args_doc}
/// Arguments for getReachabilityAnalysisIntent.
/// {@endtemplate}
/// {@macro pulumi_network_get_reachability_analysis_intent_args_doc}
class GetReachabilityAnalysisIntentArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Reachability Analysis Intent name.
  final pulumi.Input<String> reachabilityAnalysisIntentName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetReachabilityAnalysisIntentArgs].
  /// [networkManagerName] The name of the network manager.
  /// [reachabilityAnalysisIntentName] Reachability Analysis Intent name.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceName] Workspace name.
  GetReachabilityAnalysisIntentArgs({
    required String networkManagerName,
    required String reachabilityAnalysisIntentName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      reachabilityAnalysisIntentName = pulumi.Input.asInput<String>(reachabilityAnalysisIntentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'reachabilityAnalysisIntentName': reachabilityAnalysisIntentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetReachabilityAnalysisIntentArgs.fromMap(Map<String, dynamic> map) {
    return GetReachabilityAnalysisIntentArgs(
      networkManagerName: map['networkManagerName'] as String,
      reachabilityAnalysisIntentName: map['reachabilityAnalysisIntentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

