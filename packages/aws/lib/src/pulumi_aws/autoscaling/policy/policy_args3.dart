// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_predictive_scaling_configuration/policy_predictive_scaling_configuration.dart';
import '../policy_step_adjustment/policy_step_adjustment.dart';
import '../policy_target_tracking_configuration/policy_target_tracking_configuration.dart';

/// The set of arguments for Policy.
class PolicyArgs3 {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final Input<String>? adjustmentType;

  /// Name of the autoscaling group.
  final Input<String> autoscalingGroupName;

  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  final Input<int>? cooldown;

  /// Whether the scaling policy is enabled or disabled. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// The following argument is only available to "SimpleScaling" and "StepScaling" type policies:
  final Input<bool>? enabled;

  /// Estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period.
  final Input<int>? estimatedInstanceWarmup;

  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  final Input<String>? metricAggregationType;

  /// Minimum value to scale by when <span pulumi-lang-nodejs="`adjustmentType`" pulumi-lang-dotnet="`AdjustmentType`" pulumi-lang-go="`adjustmentType`" pulumi-lang-python="`adjustment_type`" pulumi-lang-yaml="`adjustmentType`" pulumi-lang-java="`adjustmentType`">`adjustment_type`</span> is set to `PercentChangeInCapacity`.
  ///
  /// The following arguments are only available to "SimpleScaling" type policies:
  final Input<int>? minAdjustmentMagnitude;

  /// Name of the policy.
  final Input<String>? name;

  /// Policy type, either "SimpleScaling", "StepScaling", "TargetTrackingScaling", or "PredictiveScaling". If this value isn't provided, AWS will default to "SimpleScaling."
  final Input<String>? policyType;

  /// Predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.
  final Input<PolicyPredictiveScalingConfiguration>?
      predictiveScalingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  final Input<int>? scalingAdjustment;

  /// Set of adjustments that manage
  /// group scaling. These have the following structure:
  ///
  /// <!--Start PulumiCodeChooser -->
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.autoscaling.Policy("example", {stepAdjustments: [
  /// {
  /// scalingAdjustment: -1,
  /// metricIntervalLowerBound: "1",
  /// metricIntervalUpperBound: "2",
  /// },
  /// {
  /// scalingAdjustment: 1,
  /// metricIntervalLowerBound: "2",
  /// metricIntervalUpperBound: "3",
  /// },
  /// ]});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.autoscaling.Policy("example", step_adjustments=[
  /// {
  /// "scaling_adjustment": -1,
  /// "metric_interval_lower_bound": "1",
  /// "metric_interval_upper_bound": "2",
  /// },
  /// {
  /// "scaling_adjustment": 1,
  /// "metric_interval_lower_bound": "2",
  /// "metric_interval_upper_bound": "3",
  /// },
  /// ])
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  /// var example = new Aws.AutoScaling.Policy("example", new()
  /// {
  /// StepAdjustments = new[]
  /// {
  /// new Aws.AutoScaling.Inputs.PolicyStepAdjustmentArgs
  /// {
  /// ScalingAdjustment = -1,
  /// MetricIntervalLowerBound = "1",
  /// MetricIntervalUpperBound = "2",
  /// },
  /// new Aws.AutoScaling.Inputs.PolicyStepAdjustmentArgs
  /// {
  /// ScalingAdjustment = 1,
  /// MetricIntervalLowerBound = "2",
  /// MetricIntervalUpperBound = "3",
  /// },
  /// },
  /// });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
  /// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// pulumi.Run(func(ctx *pulumi.Context) error {
  /// _, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
  /// StepAdjustments: autoscaling.PolicyStepAdjustmentArray{
  /// &autoscaling.PolicyStepAdjustmentArgs{
  /// ScalingAdjustment:        pulumi.Int(-1),
  /// MetricIntervalLowerBound: pulumi.String("1"),
  /// MetricIntervalUpperBound: pulumi.String("2"),
  /// },
  /// &autoscaling.PolicyStepAdjustmentArgs{
  /// ScalingAdjustment:        pulumi.Int(1),
  /// MetricIntervalLowerBound: pulumi.String("2"),
  /// MetricIntervalUpperBound: pulumi.String("3"),
  /// },
  /// },
  /// })
  /// if err != nil {
  /// return err
  /// }
  /// return nil
  /// })
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.autoscaling.Policy;
  /// import com.pulumi.aws.autoscaling.PolicyArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyStepAdjustmentArgs;
  /// import java.util.List;
  /// import java.util.ArrayList;
  /// import java.util.Map;
  /// import java.io.File;
  /// import java.nio.file.Files;
  /// import java.nio.file.Paths;
  ///
  /// public class App {
  /// public static void main(String[] args) {
  /// Pulumi.run(App::stack);
  /// }
  ///
  /// public static void stack(Context ctx) {
  /// var example = new Policy("example", PolicyArgs.builder()
  /// .stepAdjustments(
  /// PolicyStepAdjustmentArgs.builder()
  /// .scalingAdjustment(-1)
  /// .metricIntervalLowerBound("1")
  /// .metricIntervalUpperBound("2")
  /// .build(),
  /// PolicyStepAdjustmentArgs.builder()
  /// .scalingAdjustment(1)
  /// .metricIntervalLowerBound("2")
  /// .metricIntervalUpperBound("3")
  /// .build())
  /// .build());
  ///
  /// }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  /// example:
  /// type: aws:autoscaling:Policy
  /// properties:
  /// stepAdjustments:
  /// - scalingAdjustment: -1
  /// metricIntervalLowerBound: 1
  /// metricIntervalUpperBound: 2
  /// - scalingAdjustment: 1
  /// metricIntervalLowerBound: 2
  /// metricIntervalUpperBound: 3
  /// ```
  /// <!--End PulumiCodeChooser -->
  ///
  /// The following fields are available in step adjustments:
  final Input<List<PolicyStepAdjustment>>? stepAdjustments;

  /// Target tracking policy. These have the following structure:
  ///
  /// <!--Start PulumiCodeChooser -->
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.autoscaling.Policy("example", {targetTrackingConfiguration: {
  /// predefinedMetricSpecification: {
  /// predefinedMetricType: "ASGAverageCPUUtilization",
  /// },
  /// targetValue: 40,
  /// }});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.autoscaling.Policy("example", target_tracking_configuration={
  /// "predefined_metric_specification": {
  /// "predefined_metric_type": "ASGAverageCPUUtilization",
  /// },
  /// "target_value": 40,
  /// })
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  /// var example = new Aws.AutoScaling.Policy("example", new()
  /// {
  /// TargetTrackingConfiguration = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationArgs
  /// {
  /// PredefinedMetricSpecification = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs
  /// {
  /// PredefinedMetricType = "ASGAverageCPUUtilization",
  /// },
  /// TargetValue = 40,
  /// },
  /// });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
  /// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// pulumi.Run(func(ctx *pulumi.Context) error {
  /// _, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
  /// TargetTrackingConfiguration: &autoscaling.PolicyTargetTrackingConfigurationArgs{
  /// PredefinedMetricSpecification: &autoscaling.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs{
  /// PredefinedMetricType: pulumi.String("ASGAverageCPUUtilization"),
  /// },
  /// TargetValue: pulumi.Float64(40),
  /// },
  /// })
  /// if err != nil {
  /// return err
  /// }
  /// return nil
  /// })
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.autoscaling.Policy;
  /// import com.pulumi.aws.autoscaling.PolicyArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs;
  /// import java.util.List;
  /// import java.util.ArrayList;
  /// import java.util.Map;
  /// import java.io.File;
  /// import java.nio.file.Files;
  /// import java.nio.file.Paths;
  ///
  /// public class App {
  /// public static void main(String[] args) {
  /// Pulumi.run(App::stack);
  /// }
  ///
  /// public static void stack(Context ctx) {
  /// var example = new Policy("example", PolicyArgs.builder()
  /// .targetTrackingConfiguration(PolicyTargetTrackingConfigurationArgs.builder()
  /// .predefinedMetricSpecification(PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs.builder()
  /// .predefinedMetricType("ASGAverageCPUUtilization")
  /// .build())
  /// .targetValue(40.0)
  /// .build())
  /// .build());
  ///
  /// }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  /// example:
  /// type: aws:autoscaling:Policy
  /// properties:
  /// targetTrackingConfiguration:
  /// predefinedMetricSpecification:
  /// predefinedMetricType: ASGAverageCPUUtilization
  /// targetValue: 40
  /// ```
  /// <!--End PulumiCodeChooser -->
  ///
  /// The following fields are available in target tracking configuration:
  final Input<PolicyTargetTrackingConfiguration>? targetTrackingConfiguration;

  PolicyArgs3({
    this.adjustmentType,
    required this.autoscalingGroupName,
    this.cooldown,
    this.enabled,
    this.estimatedInstanceWarmup,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.name,
    this.policyType,
    this.predictiveScalingConfiguration,
    this.region,
    this.scalingAdjustment,
    this.stepAdjustments,
    this.targetTrackingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adjustmentTypeValue = adjustmentType;
    if (adjustmentTypeValue != null) {
      map['adjustmentType'] = adjustmentTypeValue;
    }
    map['autoscalingGroupName'] = autoscalingGroupName;
    final cooldownValue = cooldown;
    if (cooldownValue != null) {
      map['cooldown'] = cooldownValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final estimatedInstanceWarmupValue = estimatedInstanceWarmup;
    if (estimatedInstanceWarmupValue != null) {
      map['estimatedInstanceWarmup'] = estimatedInstanceWarmupValue;
    }
    final metricAggregationTypeValue = metricAggregationType;
    if (metricAggregationTypeValue != null) {
      map['metricAggregationType'] = metricAggregationTypeValue;
    }
    final minAdjustmentMagnitudeValue = minAdjustmentMagnitude;
    if (minAdjustmentMagnitudeValue != null) {
      map['minAdjustmentMagnitude'] = minAdjustmentMagnitudeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTypeValue = policyType;
    if (policyTypeValue != null) {
      map['policyType'] = policyTypeValue;
    }
    final predictiveScalingConfigurationValue = predictiveScalingConfiguration;
    if (predictiveScalingConfigurationValue != null) {
      map['predictiveScalingConfiguration'] = Input.mapOptionalInputValue<
              PolicyPredictiveScalingConfiguration, Map<String, dynamic>>(
          predictiveScalingConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingAdjustmentValue = scalingAdjustment;
    if (scalingAdjustmentValue != null) {
      map['scalingAdjustment'] = scalingAdjustmentValue;
    }
    final stepAdjustmentsValue = stepAdjustments;
    if (stepAdjustmentsValue != null) {
      map['stepAdjustments'] = Input.mapOptionalInputValue<
              List<PolicyStepAdjustment>, List<Map<String, dynamic>>>(
          stepAdjustmentsValue,
          (value) =>
              Input.encodeList<PolicyStepAdjustment, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final targetTrackingConfigurationValue = targetTrackingConfiguration;
    if (targetTrackingConfigurationValue != null) {
      map['targetTrackingConfiguration'] = Input.mapOptionalInputValue<
              PolicyTargetTrackingConfiguration, Map<String, dynamic>>(
          targetTrackingConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyArgs3.fromMap(Map<String, dynamic> map) {
    return PolicyArgs3(
      adjustmentType: Input.asOptionalInput<String>(map['adjustmentType']),
      autoscalingGroupName: Input.asInput<String>(map['autoscalingGroupName']),
      cooldown: Input.asOptionalInput<int>(map['cooldown']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      estimatedInstanceWarmup:
          Input.asOptionalInput<int>(map['estimatedInstanceWarmup']),
      metricAggregationType:
          Input.asOptionalInput<String>(map['metricAggregationType']),
      minAdjustmentMagnitude:
          Input.asOptionalInput<int>(map['minAdjustmentMagnitude']),
      name: Input.asOptionalInput<String>(map['name']),
      policyType: Input.asOptionalInput<String>(map['policyType']),
      predictiveScalingConfiguration:
          Input.asOptionalInput<PolicyPredictiveScalingConfiguration>(
              map['predictiveScalingConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      scalingAdjustment: Input.asOptionalInput<int>(map['scalingAdjustment']),
      stepAdjustments: Input.asOptionalInput<List<PolicyStepAdjustment>>(
          map['stepAdjustments']),
      targetTrackingConfiguration:
          Input.asOptionalInput<PolicyTargetTrackingConfiguration>(
              map['targetTrackingConfiguration']),
    );
  }
}
