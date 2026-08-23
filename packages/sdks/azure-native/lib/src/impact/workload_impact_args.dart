// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_impact_properties.dart';

/// {@template pulumi_impact_workload_impact_args_doc}
/// The set of arguments for WorkloadImpact.
/// {@endtemplate}
/// {@macro pulumi_impact_workload_impact_args_doc}
class WorkloadImpactArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<WorkloadImpactProperties>? properties;
  /// workloadImpact resource
  final pulumi.Input<String>? workloadImpactName;

  /// Creates a new [WorkloadImpactArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [workloadImpactName] workloadImpact resource
  const WorkloadImpactArgs({
    this.properties,
    this.workloadImpactName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<WorkloadImpactProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'workloadImpactName': ?workloadImpactName,
    };
  }

  factory WorkloadImpactArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadImpactArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadImpactProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadImpactName: (() { final guardedValue = map['workloadImpactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
