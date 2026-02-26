import 'package:pulumi/pulumi.dart';
import '../job_queue_compute_environment_order/job_queue_compute_environment_order.dart';
import '../job_queue_job_state_time_limit_action/job_queue_job_state_time_limit_action.dart';
import '../job_queue_timeouts/job_queue_timeouts.dart';
import 'job_queue_args.dart';

/// Provides a Batch Job Queue resource.
///
/// ## Example Usage
///
/// ### Basic Job Queue
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testQueue = new aws.batch.JobQueue("test_queue", {
/// name: "tf-test-batch-job-queue",
/// state: "ENABLED",
/// priority: 1,
/// computeEnvironmentOrders: [
/// {
/// order: 1,
/// computeEnvironment: testEnvironment1.arn,
/// },
/// {
/// order: 2,
/// computeEnvironment: testEnvironment2.arn,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_queue = aws.batch.JobQueue("test_queue",
/// name="tf-test-batch-job-queue",
/// state="ENABLED",
/// priority=1,
/// compute_environment_orders=[
/// {
/// "order": 1,
/// "compute_environment": test_environment1["arn"],
/// },
/// {
/// "order": 2,
/// "compute_environment": test_environment2["arn"],
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
/// var testQueue = new Aws.Batch.JobQueue("test_queue", new()
/// {
/// Name = "tf-test-batch-job-queue",
/// State = "ENABLED",
/// Priority = 1,
/// ComputeEnvironmentOrders = new[]
/// {
/// new Aws.Batch.Inputs.JobQueueComputeEnvironmentOrderArgs
/// {
/// Order = 1,
/// ComputeEnvironment = testEnvironment1.Arn,
/// },
/// new Aws.Batch.Inputs.JobQueueComputeEnvironmentOrderArgs
/// {
/// Order = 2,
/// ComputeEnvironment = testEnvironment2.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := batch.NewJobQueue(ctx, "test_queue", &batch.JobQueueArgs{
/// Name:     pulumi.String("tf-test-batch-job-queue"),
/// State:    pulumi.String("ENABLED"),
/// Priority: pulumi.Int(1),
/// ComputeEnvironmentOrders: batch.JobQueueComputeEnvironmentOrderArray{
/// &batch.JobQueueComputeEnvironmentOrderArgs{
/// Order:              pulumi.Int(1),
/// ComputeEnvironment: pulumi.Any(testEnvironment1.Arn),
/// },
/// &batch.JobQueueComputeEnvironmentOrderArgs{
/// Order:              pulumi.Int(2),
/// ComputeEnvironment: pulumi.Any(testEnvironment2.Arn),
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
/// import com.pulumi.aws.batch.JobQueue;
/// import com.pulumi.aws.batch.JobQueueArgs;
/// import com.pulumi.aws.batch.inputs.JobQueueComputeEnvironmentOrderArgs;
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
/// var testQueue = new JobQueue("testQueue", JobQueueArgs.builder()
/// .name("tf-test-batch-job-queue")
/// .state("ENABLED")
/// .priority(1)
/// .computeEnvironmentOrders(
/// JobQueueComputeEnvironmentOrderArgs.builder()
/// .order(1)
/// .computeEnvironment(testEnvironment1.arn())
/// .build(),
/// JobQueueComputeEnvironmentOrderArgs.builder()
/// .order(2)
/// .computeEnvironment(testEnvironment2.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testQueue:
/// type: aws:batch:JobQueue
/// name: test_queue
/// properties:
/// name: tf-test-batch-job-queue
/// state: ENABLED
/// priority: 1
/// computeEnvironmentOrders:
/// - order: 1
/// computeEnvironment: ${testEnvironment1.arn}
/// - order: 2
/// computeEnvironment: ${testEnvironment2.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Job Queue with a fair share scheduling policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.batch.SchedulingPolicy("example", {
/// name: "example",
/// fairSharePolicy: {
/// computeReservation: 1,
/// shareDecaySeconds: 3600,
/// shareDistributions: [{
/// shareIdentifier: "A1*",
/// weightFactor: 0.1,
/// }],
/// },
/// });
/// const exampleJobQueue = new aws.batch.JobQueue("example", {
/// name: "tf-test-batch-job-queue",
/// schedulingPolicyArn: example.arn,
/// state: "ENABLED",
/// priority: 1,
/// computeEnvironmentOrders: [
/// {
/// order: 1,
/// computeEnvironment: testEnvironment1.arn,
/// },
/// {
/// order: 2,
/// computeEnvironment: testEnvironment2.arn,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.batch.SchedulingPolicy("example",
/// name="example",
/// fair_share_policy={
/// "compute_reservation": 1,
/// "share_decay_seconds": 3600,
/// "share_distributions": [{
/// "share_identifier": "A1*",
/// "weight_factor": 0.1,
/// }],
/// })
/// example_job_queue = aws.batch.JobQueue("example",
/// name="tf-test-batch-job-queue",
/// scheduling_policy_arn=example.arn,
/// state="ENABLED",
/// priority=1,
/// compute_environment_orders=[
/// {
/// "order": 1,
/// "compute_environment": test_environment1["arn"],
/// },
/// {
/// "order": 2,
/// "compute_environment": test_environment2["arn"],
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
/// var example = new Aws.Batch.SchedulingPolicy("example", new()
/// {
/// Name = "example",
/// FairSharePolicy = new Aws.Batch.Inputs.SchedulingPolicyFairSharePolicyArgs
/// {
/// ComputeReservation = 1,
/// ShareDecaySeconds = 3600,
/// ShareDistributions = new[]
/// {
/// new Aws.Batch.Inputs.SchedulingPolicyFairSharePolicyShareDistributionArgs
/// {
/// ShareIdentifier = "A1*",
/// WeightFactor = 0.1,
/// },
/// },
/// },
/// });
///
/// var exampleJobQueue = new Aws.Batch.JobQueue("example", new()
/// {
/// Name = "tf-test-batch-job-queue",
/// SchedulingPolicyArn = example.Arn,
/// State = "ENABLED",
/// Priority = 1,
/// ComputeEnvironmentOrders = new[]
/// {
/// new Aws.Batch.Inputs.JobQueueComputeEnvironmentOrderArgs
/// {
/// Order = 1,
/// ComputeEnvironment = testEnvironment1.Arn,
/// },
/// new Aws.Batch.Inputs.JobQueueComputeEnvironmentOrderArgs
/// {
/// Order = 2,
/// ComputeEnvironment = testEnvironment2.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := batch.NewSchedulingPolicy(ctx, "example", &batch.SchedulingPolicyArgs{
/// Name: pulumi.String("example"),
/// FairSharePolicy: &batch.SchedulingPolicyFairSharePolicyArgs{
/// ComputeReservation: pulumi.Int(1),
/// ShareDecaySeconds:  pulumi.Int(3600),
/// ShareDistributions: batch.SchedulingPolicyFairSharePolicyShareDistributionArray{
/// &batch.SchedulingPolicyFairSharePolicyShareDistributionArgs{
/// ShareIdentifier: pulumi.String("A1*"),
/// WeightFactor:    pulumi.Float64(0.1),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = batch.NewJobQueue(ctx, "example", &batch.JobQueueArgs{
/// Name:                pulumi.String("tf-test-batch-job-queue"),
/// SchedulingPolicyArn: example.Arn,
/// State:               pulumi.String("ENABLED"),
/// Priority:            pulumi.Int(1),
/// ComputeEnvironmentOrders: batch.JobQueueComputeEnvironmentOrderArray{
/// &batch.JobQueueComputeEnvironmentOrderArgs{
/// Order:              pulumi.Int(1),
/// ComputeEnvironment: pulumi.Any(testEnvironment1.Arn),
/// },
/// &batch.JobQueueComputeEnvironmentOrderArgs{
/// Order:              pulumi.Int(2),
/// ComputeEnvironment: pulumi.Any(testEnvironment2.Arn),
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
/// import com.pulumi.aws.batch.SchedulingPolicy;
/// import com.pulumi.aws.batch.SchedulingPolicyArgs;
/// import com.pulumi.aws.batch.inputs.SchedulingPolicyFairSharePolicyArgs;
/// import com.pulumi.aws.batch.JobQueue;
/// import com.pulumi.aws.batch.JobQueueArgs;
/// import com.pulumi.aws.batch.inputs.JobQueueComputeEnvironmentOrderArgs;
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
/// var example = new SchedulingPolicy("example", SchedulingPolicyArgs.builder()
/// .name("example")
/// .fairSharePolicy(SchedulingPolicyFairSharePolicyArgs.builder()
/// .computeReservation(1)
/// .shareDecaySeconds(3600)
/// .shareDistributions(SchedulingPolicyFairSharePolicyShareDistributionArgs.builder()
/// .shareIdentifier("A1*")
/// .weightFactor(0.1)
/// .build())
/// .build())
/// .build());
///
/// var exampleJobQueue = new JobQueue("exampleJobQueue", JobQueueArgs.builder()
/// .name("tf-test-batch-job-queue")
/// .schedulingPolicyArn(example.arn())
/// .state("ENABLED")
/// .priority(1)
/// .computeEnvironmentOrders(
/// JobQueueComputeEnvironmentOrderArgs.builder()
/// .order(1)
/// .computeEnvironment(testEnvironment1.arn())
/// .build(),
/// JobQueueComputeEnvironmentOrderArgs.builder()
/// .order(2)
/// .computeEnvironment(testEnvironment2.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:batch:SchedulingPolicy
/// properties:
/// name: example
/// fairSharePolicy:
/// computeReservation: 1
/// shareDecaySeconds: 3600
/// shareDistributions:
/// - shareIdentifier: A1*
/// weightFactor: 0.1
/// exampleJobQueue:
/// type: aws:batch:JobQueue
/// name: example
/// properties:
/// name: tf-test-batch-job-queue
/// schedulingPolicyArn: ${example.arn}
/// state: ENABLED
/// priority: 1
/// computeEnvironmentOrders:
/// - order: 1
/// computeEnvironment: ${testEnvironment1.arn}
/// - order: 2
/// computeEnvironment: ${testEnvironment2.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the job queue.
///
///
/// Using `pulumi import`, import Batch Job Queue using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:batch/jobQueue:JobQueue test_queue arn:aws:batch:us-east-1:123456789012:job-queue/sample
/// ```
class JobQueue extends CustomResource {
  /// The Amazon Resource Name of the job queue.
  late final Output<String> arn;

  /// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  late final Output<List<JobQueueComputeEnvironmentOrder>?>
      computeEnvironmentOrders;

  /// The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  late final Output<List<JobQueueJobStateTimeLimitAction>?>
      jobStateTimeLimitActions;

  /// Specifies the name of the job queue.
  late final Output<String> name;

  /// The priority of the job queue. Job queues with a higher priority
  /// are evaluated first when associated with the same compute environment.
  late final Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  late final Output<String?> schedulingPolicyArn;

  /// The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  late final Output<String> state;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<JobQueueTimeouts?> timeouts;

  JobQueue(
    String name, {
    JobQueueArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:batch/jobQueue:JobQueue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.computeEnvironmentOrders =
        Output.createUnknown<List<JobQueueComputeEnvironmentOrder>?>();
    this.jobStateTimeLimitActions =
        Output.createUnknown<List<JobQueueJobStateTimeLimitAction>?>();
    this.name = Output.createUnknown<String>();
    this.priority = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.schedulingPolicyArn = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<JobQueueTimeouts?>();
  }
}
