import 'package:pulumi/pulumi.dart';
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';

/// A NotificationChannel is a medium through which an alert is delivered
/// when a policy violation is detected. Examples of channels include email, SMS,
/// and third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on retrieval.
///
///
/// To get more information about NotificationChannel, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannels)
/// * How-to Guides
/// * [Notification Options](https://cloud.google.com/monitoring/support/notification-options)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
///
/// ## Example Usage
///
/// ### Notification Channel Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.monitoring.getNotificationChannel({
/// displayName: "Test Notification Channel",
/// });
/// const alertPolicy = new gcp.monitoring.AlertPolicy("alert_policy", {
/// displayName: "My Alert Policy",
/// notificationChannels: [basic.then(basic => basic.name)],
/// combiner: "OR",
/// conditions: [{
/// displayName: "test condition",
/// conditionThreshold: {
/// filter: "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
/// duration: "60s",
/// comparison: "COMPARISON_GT",
/// aggregations: [{
/// alignmentPeriod: "60s",
/// perSeriesAligner: "ALIGN_RATE",
/// }],
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.monitoring.get_notification_channel(display_name="Test Notification Channel")
/// alert_policy = gcp.monitoring.AlertPolicy("alert_policy",
/// display_name="My Alert Policy",
/// notification_channels=[basic.name],
/// combiner="OR",
/// conditions=[{
/// "display_name": "test condition",
/// "condition_threshold": {
/// "filter": "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
/// "duration": "60s",
/// "comparison": "COMPARISON_GT",
/// "aggregations": [{
/// "alignment_period": "60s",
/// "per_series_aligner": "ALIGN_RATE",
/// }],
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = Gcp.Monitoring.GetNotificationChannel.Invoke(new()
/// {
/// DisplayName = "Test Notification Channel",
/// });
///
/// var alertPolicy = new Gcp.Monitoring.AlertPolicy("alert_policy", new()
/// {
/// DisplayName = "My Alert Policy",
/// NotificationChannels = new[]
/// {
/// basic.Apply(getNotificationChannelResult => getNotificationChannelResult.Name),
/// },
/// Combiner = "OR",
/// Conditions = new[]
/// {
/// new Gcp.Monitoring.Inputs.AlertPolicyConditionArgs
/// {
/// DisplayName = "test condition",
/// ConditionThreshold = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdArgs
/// {
/// Filter = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
/// Duration = "60s",
/// Comparison = "COMPARISON_GT",
/// Aggregations = new[]
/// {
/// new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdAggregationArgs
/// {
/// AlignmentPeriod = "60s",
/// PerSeriesAligner = "ALIGN_RATE",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// basic, err := monitoring.LookupNotificationChannel(ctx, &monitoring.LookupNotificationChannelArgs{
/// DisplayName: pulumi.StringRef("Test Notification Channel"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// DisplayName: pulumi.String("My Alert Policy"),
/// NotificationChannels: pulumi.StringArray{
/// pulumi.String(basic.Name),
/// },
/// Combiner: pulumi.String("OR"),
/// Conditions: monitoring.AlertPolicyConditionArray{
/// &monitoring.AlertPolicyConditionArgs{
/// DisplayName: pulumi.String("test condition"),
/// ConditionThreshold: &monitoring.AlertPolicyConditionConditionThresholdArgs{
/// Filter:     pulumi.String("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""),
/// Duration:   pulumi.String("60s"),
/// Comparison: pulumi.String("COMPARISON_GT"),
/// Aggregations: monitoring.AlertPolicyConditionConditionThresholdAggregationArray{
/// &monitoring.AlertPolicyConditionConditionThresholdAggregationArgs{
/// AlignmentPeriod:  pulumi.String("60s"),
/// PerSeriesAligner: pulumi.String("ALIGN_RATE"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetNotificationChannelArgs;
/// import com.pulumi.gcp.monitoring.AlertPolicy;
/// import com.pulumi.gcp.monitoring.AlertPolicyArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdArgs;
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
/// final var basic = MonitoringFunctions.getNotificationChannel(GetNotificationChannelArgs.builder()
/// .displayName("Test Notification Channel")
/// .build());
///
/// var alertPolicy = new AlertPolicy("alertPolicy", AlertPolicyArgs.builder()
/// .displayName("My Alert Policy")
/// .notificationChannels(basic.name())
/// .combiner("OR")
/// .conditions(AlertPolicyConditionArgs.builder()
/// .displayName("test condition")
/// .conditionThreshold(AlertPolicyConditionConditionThresholdArgs.builder()
/// .filter("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"")
/// .duration("60s")
/// .comparison("COMPARISON_GT")
/// .aggregations(AlertPolicyConditionConditionThresholdAggregationArgs.builder()
/// .alignmentPeriod("60s")
/// .perSeriesAligner("ALIGN_RATE")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// alertPolicy:
/// type: gcp:monitoring:AlertPolicy
/// name: alert_policy
/// properties:
/// displayName: My Alert Policy
/// notificationChannels:
/// - ${basic.name}
/// combiner: OR
/// conditions:
/// - displayName: test condition
/// conditionThreshold:
/// filter: metric.type="compute.googleapis.com/instance/disk/write_bytes_count" AND resource.type="gce_instance"
/// duration: 60s
/// comparison: COMPARISON_GT
/// aggregations:
/// - alignmentPeriod: 60s
/// perSeriesAligner: ALIGN_RATE
/// variables:
/// basic:
/// fn::invoke:
/// function: gcp:monitoring:getNotificationChannel
/// arguments:
/// displayName: Test Notification Channel
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getNotificationChannel:getNotificationChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}
