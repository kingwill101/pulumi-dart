import 'package:pulumi/pulumi.dart' as pulumi;
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
///
///
/// ### Job Queue with a fair share scheduling policy
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the job queue.
///
///
/// Using `pulumi import`, import Batch Job Queue using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:batch/jobQueue:JobQueue test_queue arn:aws:batch:us-east-1:123456789012:job-queue/sample
/// ```
class JobQueue extends pulumi.CustomResource {
  /// The Amazon Resource Name of the job queue.
  late final pulumi.Output<String> arn;

  /// The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment runs a specific job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
  late final pulumi.Output<List<JobQueueComputeEnvironmentOrder>?>
      computeEnvironmentOrders;

  /// The set of job state time limit actions mapped to a job queue. Specifies an action that AWS Batch will take after the job has remained at the head of the queue in the specified state for longer than the specified time.
  late final pulumi.Output<List<JobQueueJobStateTimeLimitAction>?>
      jobStateTimeLimitActions;

  /// Specifies the name of the job queue.
  late final pulumi.Output<String> name;

  /// The priority of the job queue. Job queues with a higher priority
  /// are evaluated first when associated with the same compute environment.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO) scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
  late final pulumi.Output<String?> schedulingPolicyArn;

  /// The state of the job queue. Must be one of: `ENABLED` or `DISABLED`
  late final pulumi.Output<String> state;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<JobQueueTimeouts?> timeouts;

  JobQueue(
    String name, {
    JobQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:batch/jobQueue:JobQueue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computeEnvironmentOrders =
        registerOutput<List<JobQueueComputeEnvironmentOrder>?>(
            'computeEnvironmentOrders');
    this.jobStateTimeLimitActions =
        registerOutput<List<JobQueueJobStateTimeLimitAction>?>(
            'jobStateTimeLimitActions');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.schedulingPolicyArn = registerOutput<String?>('schedulingPolicyArn');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<JobQueueTimeouts?>('timeouts');
  }
}
