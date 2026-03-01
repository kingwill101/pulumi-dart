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
    pulumi.Output<String>? insightName,
    pulumi.Output<InsightProperties>? properties,
    required pulumi.Output<String> workloadImpactName,
  }) :
      insightName = pulumi.Input.asOptionalInput<String>(insightName),
      properties = pulumi.Input.asOptionalInput<InsightProperties>(properties),
      workloadImpactName = pulumi.Input.asInput<String>(workloadImpactName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightName': ?insightName,
      'properties': ?pulumi.Input.mapOptionalInputValue<InsightProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'workloadImpactName': workloadImpactName,
    };
  }

  factory InsightArgs.fromMap(Map<String, dynamic> map) {
    return InsightArgs(
      insightName: map['insightName'] == null ? null : pulumi.Output.create<String>(map['insightName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<InsightProperties>(InsightProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      workloadImpactName: pulumi.Output.create<String>(map['workloadImpactName'] as String),
    );
  }
}

