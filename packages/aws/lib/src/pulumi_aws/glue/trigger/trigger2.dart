import 'package:pulumi/pulumi.dart';
import '../trigger_action/trigger_action.dart';
import '../trigger_event_batching_condition/trigger_event_batching_condition.dart';
import '../trigger_predicate/trigger_predicate.dart';
import 'trigger_args2.dart';

/// Manages a Glue Trigger resource.
///
/// ## Example Usage
///
/// ### Conditional Trigger
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
/// name: "example",
/// type: "CONDITIONAL",
/// actions: [{
/// jobName: example1.name,
/// }],
/// predicate: {
/// conditions: [{
/// jobName: example2.name,
/// state: "SUCCEEDED",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
/// name="example",
/// type="CONDITIONAL",
/// actions=[{
/// "job_name": example1["name"],
/// }],
/// predicate={
/// "conditions": [{
/// "job_name": example2["name"],
/// "state": "SUCCEEDED",
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
/// var example = new Aws.Glue.Trigger("example", new()
/// {
/// Name = "example",
/// Type = "CONDITIONAL",
/// Actions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerActionArgs
/// {
/// JobName = example1.Name,
/// },
/// },
/// Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
/// {
/// Conditions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerPredicateConditionArgs
/// {
/// JobName = example2.Name,
/// State = "SUCCEEDED",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// Name: pulumi.String("example"),
/// Type: pulumi.String("CONDITIONAL"),
/// Actions: glue.TriggerActionArray{
/// &glue.TriggerActionArgs{
/// JobName: pulumi.Any(example1.Name),
/// },
/// },
/// Predicate: &glue.TriggerPredicateArgs{
/// Conditions: glue.TriggerPredicateConditionArray{
/// &glue.TriggerPredicateConditionArgs{
/// JobName: pulumi.Any(example2.Name),
/// State:   pulumi.String("SUCCEEDED"),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
/// var example = new Trigger("example", TriggerArgs.builder()
/// .name("example")
/// .type("CONDITIONAL")
/// .actions(TriggerActionArgs.builder()
/// .jobName(example1.name())
/// .build())
/// .predicate(TriggerPredicateArgs.builder()
/// .conditions(TriggerPredicateConditionArgs.builder()
/// .jobName(example2.name())
/// .state("SUCCEEDED")
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
/// type: aws:glue:Trigger
/// properties:
/// name: example
/// type: CONDITIONAL
/// actions:
/// - jobName: ${example1.name}
/// predicate:
/// conditions:
/// - jobName: ${example2.name}
/// state: SUCCEEDED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### On-Demand Trigger
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
/// name: "example",
/// type: "ON_DEMAND",
/// actions: [{
/// jobName: exampleAwsGlueJob.name,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
/// name="example",
/// type="ON_DEMAND",
/// actions=[{
/// "job_name": example_aws_glue_job["name"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.Trigger("example", new()
/// {
/// Name = "example",
/// Type = "ON_DEMAND",
/// Actions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerActionArgs
/// {
/// JobName = exampleAwsGlueJob.Name,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// Name: pulumi.String("example"),
/// Type: pulumi.String("ON_DEMAND"),
/// Actions: glue.TriggerActionArray{
/// &glue.TriggerActionArgs{
/// JobName: pulumi.Any(exampleAwsGlueJob.Name),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
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
/// var example = new Trigger("example", TriggerArgs.builder()
/// .name("example")
/// .type("ON_DEMAND")
/// .actions(TriggerActionArgs.builder()
/// .jobName(exampleAwsGlueJob.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:Trigger
/// properties:
/// name: example
/// type: ON_DEMAND
/// actions:
/// - jobName: ${exampleAwsGlueJob.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Scheduled Trigger
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
/// name: "example",
/// schedule: "cron(15 12 * * ? *)",
/// type: "SCHEDULED",
/// actions: [{
/// jobName: exampleAwsGlueJob.name,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
/// name="example",
/// schedule="cron(15 12 * * ? *)",
/// type="SCHEDULED",
/// actions=[{
/// "job_name": example_aws_glue_job["name"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.Trigger("example", new()
/// {
/// Name = "example",
/// Schedule = "cron(15 12 * * ? *)",
/// Type = "SCHEDULED",
/// Actions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerActionArgs
/// {
/// JobName = exampleAwsGlueJob.Name,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// Name:     pulumi.String("example"),
/// Schedule: pulumi.String("cron(15 12 * * ? *)"),
/// Type:     pulumi.String("SCHEDULED"),
/// Actions: glue.TriggerActionArray{
/// &glue.TriggerActionArgs{
/// JobName: pulumi.Any(exampleAwsGlueJob.Name),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
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
/// var example = new Trigger("example", TriggerArgs.builder()
/// .name("example")
/// .schedule("cron(15 12 * * ? *)")
/// .type("SCHEDULED")
/// .actions(TriggerActionArgs.builder()
/// .jobName(exampleAwsGlueJob.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:Trigger
/// properties:
/// name: example
/// schedule: cron(15 12 * * ? *)
/// type: SCHEDULED
/// actions:
/// - jobName: ${exampleAwsGlueJob.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Conditional Trigger with Crawler Action
///
/// **Note:** Triggers can have both a crawler action and a crawler condition, just no example provided.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
/// name: "example",
/// type: "CONDITIONAL",
/// actions: [{
/// crawlerName: example1.name,
/// }],
/// predicate: {
/// conditions: [{
/// jobName: example2.name,
/// state: "SUCCEEDED",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
/// name="example",
/// type="CONDITIONAL",
/// actions=[{
/// "crawler_name": example1["name"],
/// }],
/// predicate={
/// "conditions": [{
/// "job_name": example2["name"],
/// "state": "SUCCEEDED",
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
/// var example = new Aws.Glue.Trigger("example", new()
/// {
/// Name = "example",
/// Type = "CONDITIONAL",
/// Actions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerActionArgs
/// {
/// CrawlerName = example1.Name,
/// },
/// },
/// Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
/// {
/// Conditions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerPredicateConditionArgs
/// {
/// JobName = example2.Name,
/// State = "SUCCEEDED",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// Name: pulumi.String("example"),
/// Type: pulumi.String("CONDITIONAL"),
/// Actions: glue.TriggerActionArray{
/// &glue.TriggerActionArgs{
/// CrawlerName: pulumi.Any(example1.Name),
/// },
/// },
/// Predicate: &glue.TriggerPredicateArgs{
/// Conditions: glue.TriggerPredicateConditionArray{
/// &glue.TriggerPredicateConditionArgs{
/// JobName: pulumi.Any(example2.Name),
/// State:   pulumi.String("SUCCEEDED"),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
/// var example = new Trigger("example", TriggerArgs.builder()
/// .name("example")
/// .type("CONDITIONAL")
/// .actions(TriggerActionArgs.builder()
/// .crawlerName(example1.name())
/// .build())
/// .predicate(TriggerPredicateArgs.builder()
/// .conditions(TriggerPredicateConditionArgs.builder()
/// .jobName(example2.name())
/// .state("SUCCEEDED")
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
/// type: aws:glue:Trigger
/// properties:
/// name: example
/// type: CONDITIONAL
/// actions:
/// - crawlerName: ${example1.name}
/// predicate:
/// conditions:
/// - jobName: ${example2.name}
/// state: SUCCEEDED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Conditional Trigger with Crawler Condition
///
/// **Note:** Triggers can have both a crawler action and a crawler condition, just no example provided.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
/// name: "example",
/// type: "CONDITIONAL",
/// actions: [{
/// jobName: example1.name,
/// }],
/// predicate: {
/// conditions: [{
/// crawlerName: example2.name,
/// crawlState: "SUCCEEDED",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
/// name="example",
/// type="CONDITIONAL",
/// actions=[{
/// "job_name": example1["name"],
/// }],
/// predicate={
/// "conditions": [{
/// "crawler_name": example2["name"],
/// "crawl_state": "SUCCEEDED",
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
/// var example = new Aws.Glue.Trigger("example", new()
/// {
/// Name = "example",
/// Type = "CONDITIONAL",
/// Actions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerActionArgs
/// {
/// JobName = example1.Name,
/// },
/// },
/// Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
/// {
/// Conditions = new[]
/// {
/// new Aws.Glue.Inputs.TriggerPredicateConditionArgs
/// {
/// CrawlerName = example2.Name,
/// CrawlState = "SUCCEEDED",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// Name: pulumi.String("example"),
/// Type: pulumi.String("CONDITIONAL"),
/// Actions: glue.TriggerActionArray{
/// &glue.TriggerActionArgs{
/// JobName: pulumi.Any(example1.Name),
/// },
/// },
/// Predicate: &glue.TriggerPredicateArgs{
/// Conditions: glue.TriggerPredicateConditionArray{
/// &glue.TriggerPredicateConditionArgs{
/// CrawlerName: pulumi.Any(example2.Name),
/// CrawlState:  pulumi.String("SUCCEEDED"),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
/// var example = new Trigger("example", TriggerArgs.builder()
/// .name("example")
/// .type("CONDITIONAL")
/// .actions(TriggerActionArgs.builder()
/// .jobName(example1.name())
/// .build())
/// .predicate(TriggerPredicateArgs.builder()
/// .conditions(TriggerPredicateConditionArgs.builder()
/// .crawlerName(example2.name())
/// .crawlState("SUCCEEDED")
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
/// type: aws:glue:Trigger
/// properties:
/// name: example
/// type: CONDITIONAL
/// actions:
/// - jobName: ${example1.name}
/// predicate:
/// conditions:
/// - crawlerName: ${example2.name}
/// crawlState: SUCCEEDED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Triggers using <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:glue/trigger:Trigger MyTrigger MyTrigger
/// ```
class Trigger2 extends CustomResource {
  /// List of actions initiated by this trigger when it fires. See Actions Below.
  late final Output<List<TriggerAction>> actions;

  /// Amazon Resource Name (ARN) of Glue Trigger
  late final Output<String> arn;

  /// A description of the new trigger.
  late final Output<String?> description;

  /// Start the trigger. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  late final Output<List<TriggerEventBatchingCondition>?>
      eventBatchingConditions;

  /// The name of the trigger.
  late final Output<String> name;

  /// A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  late final Output<TriggerPredicate?> predicate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  late final Output<String?> schedule;

  /// Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  late final Output<bool?> startOnCreation;

  /// The current state of the trigger.
  late final Output<String> state;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  late final Output<String> type;

  /// A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  late final Output<String?> workflowName;

  Trigger2(
    String name, {
    TriggerArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/trigger:Trigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<TriggerAction>>('actions');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventBatchingConditions =
        registerOutput<List<TriggerEventBatchingCondition>?>(
            'eventBatchingConditions');
    this.name = registerOutput<String>('name');
    this.predicate = registerOutput<TriggerPredicate?>('predicate');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<String?>('schedule');
    this.startOnCreation = registerOutput<bool?>('startOnCreation');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.workflowName = registerOutput<String?>('workflowName');
  }
}
