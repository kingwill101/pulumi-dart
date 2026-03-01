// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_impact_get_insight_args_doc}
/// Arguments for getInsight.
/// {@endtemplate}
/// {@macro pulumi_impact_get_insight_args_doc}
class GetInsightArgs {
  /// Name of the insight
  final pulumi.Input<String> insightName;
  /// workloadImpact resource
  final pulumi.Input<String> workloadImpactName;

  /// Creates a new [GetInsightArgs].
  /// [insightName] Name of the insight
  /// [workloadImpactName] workloadImpact resource
  GetInsightArgs({
    required pulumi.Output<String> insightName,
    required pulumi.Output<String> workloadImpactName,
  }) :
      insightName = pulumi.Input.asInput<String>(insightName),
      workloadImpactName = pulumi.Input.asInput<String>(workloadImpactName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightName': insightName,
      'workloadImpactName': workloadImpactName,
    };
  }

  factory GetInsightArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightArgs(
      insightName: pulumi.Output.create<String>(map['insightName'] as String),
      workloadImpactName: pulumi.Output.create<String>(map['workloadImpactName'] as String),
    );
  }
}

