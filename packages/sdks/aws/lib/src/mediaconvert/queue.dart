import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_reservation_plan_settings.dart';
import 'queue_state.dart';

/// Provides an AWS Elemental MediaConvert Queue.
///
/// ## Example Usage
///
///
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
///     var test = new Aws.MediaConvert.Queue("test", new()
///     {
///         Name = "tf-test-queue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediaconvert"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mediaconvert.NewQueue(ctx, "test", &mediaconvert.QueueArgs{
/// 			Name: pulumi.String("tf-test-queue"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Queue("test", QueueArgs.builder()
///             .name("tf-test-queue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:mediaconvert:Queue
///     properties:
///       name: tf-test-queue
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Media Convert Queue using the queue name. For example:
///
/// ```sh
/// $ pulumi import aws:mediaconvert/queue:Queue test tf-test-queue
/// ```
class Queue extends pulumi.CustomResource {
  /// The Arn of the queue
  late final pulumi.Output<String> arn;

  /// The maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, specify the number of jobs you can process concurrently in your reservation plan instead.
  late final pulumi.Output<int> concurrentJobs;

  /// A description of the queue
  late final pulumi.Output<String?> description;

  /// A unique identifier describing the queue
  late final pulumi.Output<String> name;

  /// Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are `ON_DEMAND` or `RESERVED`. Default to `ON_DEMAND`.
  late final pulumi.Output<String?> pricingPlan;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A detail pricing plan of the  reserved queue. See below.
  late final pulumi.Output<QueueReservationPlanSettings>
  reservationPlanSettings;

  /// A status of the queue. Valid values are `ACTIVE` or `RESERVED`. Default to `PAUSED`.
  late final pulumi.Output<String?> status;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_mediaconvert_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(String name, {QueueArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:mediaconvert/queue:Queue',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    concurrentJobs = registerOutput<int>('concurrentJobs');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    pricingPlan = registerOutput<String?>('pricingPlan');
    region = registerOutput<String>('region');
    reservationPlanSettings = registerOutput<QueueReservationPlanSettings>(
      'reservationPlanSettings',
    );
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(String name, pulumi.Input<String> id, {QueueState? state}) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:mediaconvert/queue:Queue',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    concurrentJobs = registerOutput<int>('concurrentJobs');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    pricingPlan = registerOutput<String?>('pricingPlan');
    region = registerOutput<String>('region');
    reservationPlanSettings = registerOutput<QueueReservationPlanSettings>(
      'reservationPlanSettings',
    );
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
