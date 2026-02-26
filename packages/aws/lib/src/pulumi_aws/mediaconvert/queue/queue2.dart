import 'package:pulumi/pulumi.dart';
import '../queue_reservation_plan_settings/queue_reservation_plan_settings.dart';
import 'queue_args2.dart';

/// Provides an AWS Elemental MediaConvert Queue.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.mediaconvert.Queue("test", {name: "tf-test-queue"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.mediaconvert.Queue("test", name="tf-test-queue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.MediaConvert.Queue("test", new()
/// {
/// Name = "tf-test-queue",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediaconvert"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mediaconvert.NewQueue(ctx, "test", &mediaconvert.QueueArgs{
/// Name: pulumi.String("tf-test-queue"),
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
/// import com.pulumi.aws.mediaconvert.Queue;
/// import com.pulumi.aws.mediaconvert.QueueArgs;
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
/// var test = new Queue("test", QueueArgs.builder()
/// .name("tf-test-queue")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:mediaconvert:Queue
/// properties:
/// name: tf-test-queue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Media Convert Queue using the queue name. For example:
///
/// ```sh
/// $ pulumi import aws:mediaconvert/queue:Queue test tf-test-queue
/// ```
class Queue2 extends CustomResource {
  /// The Arn of the queue
  late final Output<String> arn;

  /// The maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, specify the number of jobs you can process concurrently in your reservation plan instead.
  late final Output<int> concurrentJobs;

  /// A description of the queue
  late final Output<String?> description;

  /// A unique identifier describing the queue
  late final Output<String> name;

  /// Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are `ON_DEMAND` or `RESERVED`. Default to `ON_DEMAND`.
  late final Output<String?> pricingPlan;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A detail pricing plan of the  reserved queue. See below.
  late final Output<QueueReservationPlanSettings> reservationPlanSettings;

  /// A status of the queue. Valid values are `ACTIVE` or `RESERVED`. Default to `PAUSED`.
  late final Output<String?> status;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Queue2(
    String name, {
    QueueArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mediaconvert/queue:Queue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.concurrentJobs = Output.createUnknown<int>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.pricingPlan = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.reservationPlanSettings =
        Output.createUnknown<QueueReservationPlanSettings>();
    this.status = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
