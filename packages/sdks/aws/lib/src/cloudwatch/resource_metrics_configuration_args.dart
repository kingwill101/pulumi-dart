// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_metrics_configuration_metric_selection.dart';

/// {@template pulumi_cloudwatch_resource_metrics_configuration_resource_metrics_configuration_args_doc}
/// The set of arguments for ResourceMetricsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_resource_metrics_configuration_resource_metrics_configuration_args_doc}
class ResourceMetricsConfigurationArgs {
  /// Configuration block that limits which metrics CloudWatch collects. At most one block is supported. When omitted, CloudWatch collects all available detailed metrics for the resource. See `metricSelection` below.
  final pulumi.Input<ResourceMetricsConfigurationMetricSelection?>? metricSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the AWS resource to enable detailed monitoring for. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ResourceMetricsConfigurationArgs].
  /// [metricSelection] Configuration block that limits which metrics CloudWatch collects. At most one block is supported. When omitted, CloudWatch collects all available detailed metrics for the resource. See `metricSelection` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the AWS resource to enable detailed monitoring for. Changing this forces a new resource to be created.
  const ResourceMetricsConfigurationArgs({
    this.metricSelection,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricSelection': ?pulumi.Input.mapOptionalInputValue<ResourceMetricsConfigurationMetricSelection, Map<String, dynamic>>(metricSelection, (value) => value.toMap()),
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory ResourceMetricsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceMetricsConfigurationArgs(
      metricSelection: (() { final guardedValue = map['metricSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceMetricsConfigurationMetricSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
