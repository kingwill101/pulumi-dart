// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_v1.dart';
import 'spatial_aggregation.dart';
import 'temporal_aggregation.dart';

/// Represents a signal source used in SLIs.
class SignalSource {
  /// Filters applied to modify signal values.
  final pulumi.Input<List<ConditionV1>> filters;
  /// Name of the metric.
  final pulumi.Input<String> metricName;
  /// Namespace of the metric.
  final pulumi.Input<String> metricNamespace;
  /// Unique identifier for the signal source.
  final pulumi.Input<String> signalSourceId;
  /// Managed identity for authenticating the signal source.
  final pulumi.Input<String> sourceAmwAccountManagedIdentity;
  /// Resource ID of the source AMW account.
  final pulumi.Input<String> sourceAmwAccountResourceId;
  /// Defines how measurements are aggregated across multiple time series.
  final pulumi.Input<SpatialAggregation> spatialAggregation;
  /// Defines how measurements are aggregated over a specific time window within the same time series.
  final pulumi.Input<TemporalAggregation> temporalAggregation;

  /// Creates a new [SignalSource].
  /// [filters] Filters applied to modify signal values.
  /// [metricName] Name of the metric.
  /// [metricNamespace] Namespace of the metric.
  /// [signalSourceId] Unique identifier for the signal source.
  /// [sourceAmwAccountManagedIdentity] Managed identity for authenticating the signal source.
  /// [sourceAmwAccountResourceId] Resource ID of the source AMW account.
  /// [spatialAggregation] Defines how measurements are aggregated across multiple time series.
  /// [temporalAggregation] Defines how measurements are aggregated over a specific time window within the same time series.
  const SignalSource({
    required this.filters,
    required this.metricName,
    required this.metricNamespace,
    required this.signalSourceId,
    required this.sourceAmwAccountManagedIdentity,
    required this.sourceAmwAccountResourceId,
    required this.spatialAggregation,
    required this.temporalAggregation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': pulumi.Input.mapInputValue<List<ConditionV1>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<ConditionV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'signalSourceId': signalSourceId,
      'sourceAmwAccountManagedIdentity': sourceAmwAccountManagedIdentity,
      'sourceAmwAccountResourceId': sourceAmwAccountResourceId,
      'spatialAggregation': pulumi.Input.mapInputValue<SpatialAggregation, Map<String, dynamic>>(spatialAggregation, (value) => value.toMap()),
      'temporalAggregation': pulumi.Input.mapInputValue<TemporalAggregation, Map<String, dynamic>>(temporalAggregation, (value) => value.toMap()),
    };
  }

  factory SignalSource.fromMap(Map<String, dynamic> map) {
    return SignalSource(
      filters: pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionV1>(map['filters']!, (value) => ConditionV1.fromMap((value as Map).cast<String, dynamic>()))),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
      signalSourceId: pulumi.Input.fromValue(map['signalSourceId'] as String),
      sourceAmwAccountManagedIdentity: pulumi.Input.fromValue(map['sourceAmwAccountManagedIdentity'] as String),
      sourceAmwAccountResourceId: pulumi.Input.fromValue(map['sourceAmwAccountResourceId'] as String),
      spatialAggregation: pulumi.Input.fromValue(SpatialAggregation.fromMap((map['spatialAggregation']! as Map).cast<String, dynamic>())),
      temporalAggregation: pulumi.Input.fromValue(TemporalAggregation.fromMap((map['temporalAggregation']! as Map).cast<String, dynamic>())),
    );
  }
}
