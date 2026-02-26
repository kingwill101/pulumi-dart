import 'package:pulumi/pulumi.dart';
import '../launch_execution/launch_execution.dart';
import '../launch_group/launch_group.dart';
import '../launch_metric_monitor/launch_metric_monitor.dart';
import '../launch_scheduled_splits_config/launch_scheduled_splits_config.dart';
import 'launch_args.dart';

/// Provides a CloudWatch Evidently Launch resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// groups: [{
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// }],
/// scheduledSplitsConfig: {
/// steps: [{
/// groupWeights: {
/// Variation1: 0,
/// },
/// startTime: "2024-01-07 01:43:59+00:00",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// groups=[{
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// }],
/// scheduled_splits_config={
/// "steps": [{
/// "group_weights": {
/// "Variation1": 0,
/// },
/// "start_time": "2024-01-07 01:43:59+00:00",
/// }],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 0 },
/// },
/// StartTime = "2024-01-07 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:    pulumi.String("example"),
/// Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation1"),
/// Variation: pulumi.String("Variation1"),
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(0),
/// },
/// StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .groups(LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.of("Variation1", 0))
/// .startTime("2024-01-07 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 0
/// startTime: 2024-01-07 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With description
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// description: "example description",
/// groups: [{
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// }],
/// scheduledSplitsConfig: {
/// steps: [{
/// groupWeights: {
/// Variation1: 0,
/// },
/// startTime: "2024-01-07 01:43:59+00:00",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// description="example description",
/// groups=[{
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// }],
/// scheduled_splits_config={
/// "steps": [{
/// "group_weights": {
/// "Variation1": 0,
/// },
/// "start_time": "2024-01-07 01:43:59+00:00",
/// }],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// Description = "example description",
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 0 },
/// },
/// StartTime = "2024-01-07 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:        pulumi.String("example"),
/// Project:     pulumi.Any(exampleAwsEvidentlyProject.Name),
/// Description: pulumi.String("example description"),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation1"),
/// Variation: pulumi.String("Variation1"),
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(0),
/// },
/// StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .description("example description")
/// .groups(LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.of("Variation1", 0))
/// .startTime("2024-01-07 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// description: example description
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 0
/// startTime: 2024-01-07 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With multiple groups
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// groups: [
/// {
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// description: "first-group",
/// },
/// {
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation2",
/// variation: "Variation2",
/// description: "second-group",
/// },
/// ],
/// scheduledSplitsConfig: {
/// steps: [{
/// groupWeights: {
/// Variation1: 0,
/// Variation2: 0,
/// },
/// startTime: "2024-01-07 01:43:59+00:00",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// groups=[
/// {
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// "description": "first-group",
/// },
/// {
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation2",
/// "variation": "Variation2",
/// "description": "second-group",
/// },
/// ],
/// scheduled_splits_config={
/// "steps": [{
/// "group_weights": {
/// "Variation1": 0,
/// "Variation2": 0,
/// },
/// "start_time": "2024-01-07 01:43:59+00:00",
/// }],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// Description = "first-group",
/// },
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation2",
/// Variation = "Variation2",
/// Description = "second-group",
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 0 },
/// { "Variation2", 0 },
/// },
/// StartTime = "2024-01-07 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:    pulumi.String("example"),
/// Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:     pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:        pulumi.String("Variation1"),
/// Variation:   pulumi.String("Variation1"),
/// Description: pulumi.String("first-group"),
/// },
/// &evidently.LaunchGroupArgs{
/// Feature:     pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:        pulumi.String("Variation2"),
/// Variation:   pulumi.String("Variation2"),
/// Description: pulumi.String("second-group"),
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(0),
/// "Variation2": pulumi.Int(0),
/// },
/// StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .groups(
/// LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .description("first-group")
/// .build(),
/// LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation2")
/// .variation("Variation2")
/// .description("second-group")
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.ofEntries(
/// Map.entry("Variation1", 0),
/// Map.entry("Variation2", 0)
/// ))
/// .startTime("2024-01-07 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// description: first-group
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation2
/// variation: Variation2
/// description: second-group
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 0
/// Variation2: 0
/// startTime: 2024-01-07 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With<span pulumi-lang-nodejs=" metricMonitors
/// " pulumi-lang-dotnet=" MetricMonitors
/// " pulumi-lang-go=" metricMonitors
/// " pulumi-lang-python=" metric_monitors
/// " pulumi-lang-yaml=" metricMonitors
/// " pulumi-lang-java=" metricMonitors
/// "> metric_monitors
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// groups: [{
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// }],
/// metricMonitors: [
/// {
/// metricDefinition: {
/// entityIdKey: "entity_id_key1",
/// eventPattern: "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}",
/// name: "name1",
/// unitLabel: "unit_label1",
/// valueKey: "value_key1",
/// },
/// },
/// {
/// metricDefinition: {
/// entityIdKey: "entity_id_key2",
/// eventPattern: "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}",
/// name: "name2",
/// unitLabel: "unit_label2",
/// valueKey: "value_key2",
/// },
/// },
/// ],
/// scheduledSplitsConfig: {
/// steps: [{
/// groupWeights: {
/// Variation1: 0,
/// },
/// startTime: "2024-01-07 01:43:59+00:00",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// groups=[{
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// }],
/// metric_monitors=[
/// {
/// "metric_definition": {
/// "entity_id_key": "entity_id_key1",
/// "event_pattern": "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}",
/// "name": "name1",
/// "unit_label": "unit_label1",
/// "value_key": "value_key1",
/// },
/// },
/// {
/// "metric_definition": {
/// "entity_id_key": "entity_id_key2",
/// "event_pattern": "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}",
/// "name": "name2",
/// "unit_label": "unit_label2",
/// "value_key": "value_key2",
/// },
/// },
/// ],
/// scheduled_splits_config={
/// "steps": [{
/// "group_weights": {
/// "Variation1": 0,
/// },
/// "start_time": "2024-01-07 01:43:59+00:00",
/// }],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// },
/// },
/// MetricMonitors = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchMetricMonitorArgs
/// {
/// MetricDefinition = new Aws.Evidently.Inputs.LaunchMetricMonitorMetricDefinitionArgs
/// {
/// EntityIdKey = "entity_id_key1",
/// EventPattern = "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}",
/// Name = "name1",
/// UnitLabel = "unit_label1",
/// ValueKey = "value_key1",
/// },
/// },
/// new Aws.Evidently.Inputs.LaunchMetricMonitorArgs
/// {
/// MetricDefinition = new Aws.Evidently.Inputs.LaunchMetricMonitorMetricDefinitionArgs
/// {
/// EntityIdKey = "entity_id_key2",
/// EventPattern = "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}",
/// Name = "name2",
/// UnitLabel = "unit_label2",
/// ValueKey = "value_key2",
/// },
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 0 },
/// },
/// StartTime = "2024-01-07 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:    pulumi.String("example"),
/// Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation1"),
/// Variation: pulumi.String("Variation1"),
/// },
/// },
/// MetricMonitors: evidently.LaunchMetricMonitorArray{
/// &evidently.LaunchMetricMonitorArgs{
/// MetricDefinition: &evidently.LaunchMetricMonitorMetricDefinitionArgs{
/// EntityIdKey:  pulumi.String("entity_id_key1"),
/// EventPattern: pulumi.String("{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}"),
/// Name:         pulumi.String("name1"),
/// UnitLabel:    pulumi.String("unit_label1"),
/// ValueKey:     pulumi.String("value_key1"),
/// },
/// },
/// &evidently.LaunchMetricMonitorArgs{
/// MetricDefinition: &evidently.LaunchMetricMonitorMetricDefinitionArgs{
/// EntityIdKey:  pulumi.String("entity_id_key2"),
/// EventPattern: pulumi.String("{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}"),
/// Name:         pulumi.String("name2"),
/// UnitLabel:    pulumi.String("unit_label2"),
/// ValueKey:     pulumi.String("value_key2"),
/// },
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(0),
/// },
/// StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchMetricMonitorArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchMetricMonitorMetricDefinitionArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .groups(LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .build())
/// .metricMonitors(
/// LaunchMetricMonitorArgs.builder()
/// .metricDefinition(LaunchMetricMonitorMetricDefinitionArgs.builder()
/// .entityIdKey("entity_id_key1")
/// .eventPattern("{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}")
/// .name("name1")
/// .unitLabel("unit_label1")
/// .valueKey("value_key1")
/// .build())
/// .build(),
/// LaunchMetricMonitorArgs.builder()
/// .metricDefinition(LaunchMetricMonitorMetricDefinitionArgs.builder()
/// .entityIdKey("entity_id_key2")
/// .eventPattern("{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}")
/// .name("name2")
/// .unitLabel("unit_label2")
/// .valueKey("value_key2")
/// .build())
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.of("Variation1", 0))
/// .startTime("2024-01-07 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// metricMonitors:
/// - metricDefinition:
/// entityIdKey: entity_id_key1
/// eventPattern: '{"Price":[{"numeric":[">",11,"<=",22]}]}'
/// name: name1
/// unitLabel: unit_label1
/// valueKey: value_key1
/// - metricDefinition:
/// entityIdKey: entity_id_key2
/// eventPattern: '{"Price":[{"numeric":[">",9,"<=",19]}]}'
/// name: name2
/// unitLabel: unit_label2
/// valueKey: value_key2
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 0
/// startTime: 2024-01-07 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With<span pulumi-lang-nodejs=" randomizationSalt
/// " pulumi-lang-dotnet=" RandomizationSalt
/// " pulumi-lang-go=" randomizationSalt
/// " pulumi-lang-python=" randomization_salt
/// " pulumi-lang-yaml=" randomizationSalt
/// " pulumi-lang-java=" randomizationSalt
/// "> randomization_salt
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// randomizationSalt: "example randomization salt",
/// groups: [{
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// }],
/// scheduledSplitsConfig: {
/// steps: [{
/// groupWeights: {
/// Variation1: 0,
/// },
/// startTime: "2024-01-07 01:43:59+00:00",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// randomization_salt="example randomization salt",
/// groups=[{
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// }],
/// scheduled_splits_config={
/// "steps": [{
/// "group_weights": {
/// "Variation1": 0,
/// },
/// "start_time": "2024-01-07 01:43:59+00:00",
/// }],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// RandomizationSalt = "example randomization salt",
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 0 },
/// },
/// StartTime = "2024-01-07 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:              pulumi.String("example"),
/// Project:           pulumi.Any(exampleAwsEvidentlyProject.Name),
/// RandomizationSalt: pulumi.String("example randomization salt"),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation1"),
/// Variation: pulumi.String("Variation1"),
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(0),
/// },
/// StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .randomizationSalt("example randomization salt")
/// .groups(LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.of("Variation1", 0))
/// .startTime("2024-01-07 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// randomizationSalt: example randomization salt
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 0
/// startTime: 2024-01-07 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With multiple steps
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// groups: [
/// {
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// },
/// {
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation2",
/// variation: "Variation2",
/// },
/// ],
/// scheduledSplitsConfig: {
/// steps: [
/// {
/// groupWeights: {
/// Variation1: 15,
/// Variation2: 10,
/// },
/// startTime: "2024-01-07 01:43:59+00:00",
/// },
/// {
/// groupWeights: {
/// Variation1: 20,
/// Variation2: 25,
/// },
/// startTime: "2024-01-08 01:43:59+00:00",
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// groups=[
/// {
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// },
/// {
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation2",
/// "variation": "Variation2",
/// },
/// ],
/// scheduled_splits_config={
/// "steps": [
/// {
/// "group_weights": {
/// "Variation1": 15,
/// "Variation2": 10,
/// },
/// "start_time": "2024-01-07 01:43:59+00:00",
/// },
/// {
/// "group_weights": {
/// "Variation1": 20,
/// "Variation2": 25,
/// },
/// "start_time": "2024-01-08 01:43:59+00:00",
/// },
/// ],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// },
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation2",
/// Variation = "Variation2",
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 15 },
/// { "Variation2", 10 },
/// },
/// StartTime = "2024-01-07 01:43:59+00:00",
/// },
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 20 },
/// { "Variation2", 25 },
/// },
/// StartTime = "2024-01-08 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:    pulumi.String("example"),
/// Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation1"),
/// Variation: pulumi.String("Variation1"),
/// },
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation2"),
/// Variation: pulumi.String("Variation2"),
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(15),
/// "Variation2": pulumi.Int(10),
/// },
/// StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// },
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(20),
/// "Variation2": pulumi.Int(25),
/// },
/// StartTime: pulumi.String("2024-01-08 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .groups(
/// LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .build(),
/// LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation2")
/// .variation("Variation2")
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(
/// LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.ofEntries(
/// Map.entry("Variation1", 15),
/// Map.entry("Variation2", 10)
/// ))
/// .startTime("2024-01-07 01:43:59+00:00")
/// .build(),
/// LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.ofEntries(
/// Map.entry("Variation1", 20),
/// Map.entry("Variation2", 25)
/// ))
/// .startTime("2024-01-08 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation2
/// variation: Variation2
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 15
/// Variation2: 10
/// startTime: 2024-01-07 01:43:59+00:00
/// - groupWeights:
/// Variation1: 20
/// Variation2: 25
/// startTime: 2024-01-08 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With segment overrides
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
/// name: "example",
/// project: exampleAwsEvidentlyProject.name,
/// groups: [
/// {
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation1",
/// variation: "Variation1",
/// },
/// {
/// feature: exampleAwsEvidentlyFeature.name,
/// name: "Variation2",
/// variation: "Variation2",
/// },
/// ],
/// scheduledSplitsConfig: {
/// steps: [{
/// groupWeights: {
/// Variation1: 0,
/// Variation2: 0,
/// },
/// segmentOverrides: [
/// {
/// evaluationOrder: 1,
/// segment: exampleAwsEvidentlySegment.name,
/// weights: {
/// Variation2: 10000,
/// },
/// },
/// {
/// evaluationOrder: 2,
/// segment: exampleAwsEvidentlySegment.name,
/// weights: {
/// Variation1: 40000,
/// Variation2: 30000,
/// },
/// },
/// ],
/// startTime: "2024-01-08 01:43:59+00:00",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
/// name="example",
/// project=example_aws_evidently_project["name"],
/// groups=[
/// {
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation1",
/// "variation": "Variation1",
/// },
/// {
/// "feature": example_aws_evidently_feature["name"],
/// "name": "Variation2",
/// "variation": "Variation2",
/// },
/// ],
/// scheduled_splits_config={
/// "steps": [{
/// "group_weights": {
/// "Variation1": 0,
/// "Variation2": 0,
/// },
/// "segment_overrides": [
/// {
/// "evaluation_order": 1,
/// "segment": example_aws_evidently_segment["name"],
/// "weights": {
/// "Variation2": 10000,
/// },
/// },
/// {
/// "evaluation_order": 2,
/// "segment": example_aws_evidently_segment["name"],
/// "weights": {
/// "Variation1": 40000,
/// "Variation2": 30000,
/// },
/// },
/// ],
/// "start_time": "2024-01-08 01:43:59+00:00",
/// }],
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
/// var example = new Aws.Evidently.Launch("example", new()
/// {
/// Name = "example",
/// Project = exampleAwsEvidentlyProject.Name,
/// Groups = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation1",
/// Variation = "Variation1",
/// },
/// new Aws.Evidently.Inputs.LaunchGroupArgs
/// {
/// Feature = exampleAwsEvidentlyFeature.Name,
/// Name = "Variation2",
/// Variation = "Variation2",
/// },
/// },
/// ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
/// {
/// Steps = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
/// {
/// GroupWeights =
/// {
/// { "Variation1", 0 },
/// { "Variation2", 0 },
/// },
/// SegmentOverrides = new[]
/// {
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepSegmentOverrideArgs
/// {
/// EvaluationOrder = 1,
/// Segment = exampleAwsEvidentlySegment.Name,
/// Weights =
/// {
/// { "Variation2", 10000 },
/// },
/// },
/// new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepSegmentOverrideArgs
/// {
/// EvaluationOrder = 2,
/// Segment = exampleAwsEvidentlySegment.Name,
/// Weights =
/// {
/// { "Variation1", 40000 },
/// { "Variation2", 30000 },
/// },
/// },
/// },
/// StartTime = "2024-01-08 01:43:59+00:00",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// Name:    pulumi.String("example"),
/// Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// Groups: evidently.LaunchGroupArray{
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation1"),
/// Variation: pulumi.String("Variation1"),
/// },
/// &evidently.LaunchGroupArgs{
/// Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// Name:      pulumi.String("Variation2"),
/// Variation: pulumi.String("Variation2"),
/// },
/// },
/// ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// &evidently.LaunchScheduledSplitsConfigStepArgs{
/// GroupWeights: pulumi.IntMap{
/// "Variation1": pulumi.Int(0),
/// "Variation2": pulumi.Int(0),
/// },
/// SegmentOverrides: evidently.LaunchScheduledSplitsConfigStepSegmentOverrideArray{
/// &evidently.LaunchScheduledSplitsConfigStepSegmentOverrideArgs{
/// EvaluationOrder: pulumi.Int(1),
/// Segment:         pulumi.Any(exampleAwsEvidentlySegment.Name),
/// Weights: pulumi.IntMap{
/// "Variation2": pulumi.Int(10000),
/// },
/// },
/// &evidently.LaunchScheduledSplitsConfigStepSegmentOverrideArgs{
/// EvaluationOrder: pulumi.Int(2),
/// Segment:         pulumi.Any(exampleAwsEvidentlySegment.Name),
/// Weights: pulumi.IntMap{
/// "Variation1": pulumi.Int(40000),
/// "Variation2": pulumi.Int(30000),
/// },
/// },
/// },
/// StartTime: pulumi.String("2024-01-08 01:43:59+00:00"),
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
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
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
/// var example = new Launch("example", LaunchArgs.builder()
/// .name("example")
/// .project(exampleAwsEvidentlyProject.name())
/// .groups(
/// LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation1")
/// .variation("Variation1")
/// .build(),
/// LaunchGroupArgs.builder()
/// .feature(exampleAwsEvidentlyFeature.name())
/// .name("Variation2")
/// .variation("Variation2")
/// .build())
/// .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
/// .steps(LaunchScheduledSplitsConfigStepArgs.builder()
/// .groupWeights(Map.ofEntries(
/// Map.entry("Variation1", 0),
/// Map.entry("Variation2", 0)
/// ))
/// .segmentOverrides(
/// LaunchScheduledSplitsConfigStepSegmentOverrideArgs.builder()
/// .evaluationOrder(1)
/// .segment(exampleAwsEvidentlySegment.name())
/// .weights(Map.of("Variation2", 10000))
/// .build(),
/// LaunchScheduledSplitsConfigStepSegmentOverrideArgs.builder()
/// .evaluationOrder(2)
/// .segment(exampleAwsEvidentlySegment.name())
/// .weights(Map.ofEntries(
/// Map.entry("Variation1", 40000),
/// Map.entry("Variation2", 30000)
/// ))
/// .build())
/// .startTime("2024-01-08 01:43:59+00:00")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:evidently:Launch
/// properties:
/// name: example
/// project: ${exampleAwsEvidentlyProject.name}
/// groups:
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation1
/// variation: Variation1
/// - feature: ${exampleAwsEvidentlyFeature.name}
/// name: Variation2
/// variation: Variation2
/// scheduledSplitsConfig:
/// steps:
/// - groupWeights:
/// Variation1: 0
/// Variation2: 0
/// segmentOverrides:
/// - evaluationOrder: 1
/// segment: ${exampleAwsEvidentlySegment.name}
/// weights:
/// Variation2: 10000
/// - evaluationOrder: 2
/// segment: ${exampleAwsEvidentlySegment.name}
/// weights:
/// Variation1: 40000
/// Variation2: 30000
/// startTime: 2024-01-08 01:43:59+00:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Import using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> of the launch and <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> of the project separated by a `:`:
///
///
/// **Using `pulumi import` to import** CloudWatch Evidently Launch using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> of the launch and <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> of the project or <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> of the hosting CloudWatch Evidently Project separated by a `:`. For example:
///
/// Import using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> of the launch and <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> of the project separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:evidently/launch:Launch example exampleLaunchName:exampleProjectName
/// ```
///
/// Import using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> of the launch and <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> of the project separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:evidently/launch:Launch example exampleLaunchName:arn:aws:evidently:us-east-1:123456789012:project/exampleProjectName
/// ```
class Launch extends CustomResource {
  /// The ARN of the launch.
  late final Output<String> arn;

  /// The date and time that the launch is created.
  late final Output<String> createdTime;

  /// Specifies the description of the launch.
  late final Output<String?> description;

  /// A block that contains information about the start and end times of the launch. Detailed below
  late final Output<List<LaunchExecution>> executions;

  /// One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  late final Output<List<LaunchGroup>> groups;

  /// The date and time that the launch was most recently updated.
  late final Output<String> lastUpdatedTime;

  /// One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  late final Output<List<LaunchMetricMonitor>?> metricMonitors;

  /// The name for the new launch. Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`127`" pulumi-lang-dotnet="`127`" pulumi-lang-go="`127`" pulumi-lang-python="`127`" pulumi-lang-yaml="`127`" pulumi-lang-java="`127`">`127`</span>.
  late final Output<String> name;

  /// The name or ARN of the project that is to contain the new launch.
  late final Output<String> project;

  /// When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  late final Output<String?> randomizationSalt;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  late final Output<LaunchScheduledSplitsConfig?> scheduledSplitsConfig;

  /// The current state of the launch. Valid values are `CREATED`, `UPDATING`, `RUNNING`, `COMPLETED`, and `CANCELLED`.
  late final Output<String> status;

  /// If the launch was stopped, this is the string that was entered by the person who stopped the launch, to explain why it was stopped.
  late final Output<String> statusReason;

  /// Tags to apply to the launch. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of launch.
  late final Output<String> type;

  Launch(
    String name, {
    LaunchArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:evidently/launch:Launch',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String?>('description');
    this.executions = registerOutput<List<LaunchExecution>>('executions');
    this.groups = registerOutput<List<LaunchGroup>>('groups');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.metricMonitors =
        registerOutput<List<LaunchMetricMonitor>?>('metricMonitors');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.randomizationSalt = registerOutput<String?>('randomizationSalt');
    this.region = registerOutput<String>('region');
    this.scheduledSplitsConfig =
        registerOutput<LaunchScheduledSplitsConfig?>('scheduledSplitsConfig');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
