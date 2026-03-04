// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_impact_get_workload_impact_args_doc}
/// Arguments for getWorkloadImpact.
/// {@endtemplate}
/// {@macro pulumi_impact_get_workload_impact_args_doc}
class GetWorkloadImpactArgs {
  /// workloadImpact resource
  final pulumi.Input<String> workloadImpactName;

  /// Creates a new [GetWorkloadImpactArgs].
  /// [workloadImpactName] workloadImpact resource
  GetWorkloadImpactArgs({required this.workloadImpactName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workloadImpactName': workloadImpactName};
  }

  factory GetWorkloadImpactArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadImpactArgs(
      workloadImpactName: pulumi.Input.fromValue(
        map['workloadImpactName'] as String,
      ),
    );
  }
}
