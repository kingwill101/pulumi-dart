import 'package:pulumi/pulumi.dart' as pulumi;
import '../queue_reservation_plan_settings/queue_reservation_plan_settings.dart';
import 'queue_mediaconvert_args.dart';

/// Provides an AWS Elemental MediaConvert Queue.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Media Convert Queue using the queue name. For example:
///
/// ```sh
/// $ pulumi import aws:mediaconvert/queue:Queue test tf-test-queue
/// ```
class QueueMediaconvert extends pulumi.CustomResource {
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

  QueueMediaconvert(
    String name, {
    QueueMediaconvertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediaconvert/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.concurrentJobs = registerOutput<int>('concurrentJobs');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.pricingPlan = registerOutput<String?>('pricingPlan');
    this.region = registerOutput<String>('region');
    this.reservationPlanSettings =
        registerOutput<QueueReservationPlanSettings>('reservationPlanSettings');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
