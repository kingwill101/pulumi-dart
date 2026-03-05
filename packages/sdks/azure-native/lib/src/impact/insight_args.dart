// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_properties.dart';

/// {@template pulumi_impact_insight_args_doc}
/// The set of arguments for Insight.
/// {@endtemplate}
/// {@macro pulumi_impact_insight_args_doc}
class InsightArgs {
  /// Name of the insight
  final pulumi.Input<String>? insightName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<InsightProperties>? properties;
  /// workloadImpact resource
  final pulumi.Input<String> workloadImpactName;

  /// Creates a new [InsightArgs].
  /// [insightName] Name of the insight
  /// [properties] The resource-specific properties for this resource.
  /// [workloadImpactName] workloadImpact resource
  InsightArgs({
    this.insightName,
    this.properties,
    required this.workloadImpactName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightName': ?insightName,
      'properties': ?pulumi.Input.mapOptionalInputValue<InsightProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'workloadImpactName': workloadImpactName,
    };
  }

  factory InsightArgs.fromMap(Map<String, dynamic> map) {
    return InsightArgs(
      insightName: (() { final guardedValue = map['insightName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadImpactName: pulumi.Input.fromValue(map['workloadImpactName'] as String),
    );
  }
}

