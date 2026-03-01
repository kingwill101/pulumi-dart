// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_reservation_plan_settings.dart';

/// {@template pulumi_mediaconvert_queue_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_mediaconvert_queue_queue_args_doc}
class QueueArgs {
  /// The maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, specify the number of jobs you can process concurrently in your reservation plan instead.
  final pulumi.Input<int>? concurrentJobs;
  /// A description of the queue
  final pulumi.Input<String>? description;
  /// A unique identifier describing the queue
  final pulumi.Input<String>? name;
  /// Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are `ON_DEMAND` or `RESERVED`. Default to `ON_DEMAND`.
  final pulumi.Input<String>? pricingPlan;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A detail pricing plan of the  reserved queue. See below.
  final pulumi.Input<QueueReservationPlanSettings>? reservationPlanSettings;
  /// A status of the queue. Valid values are `ACTIVE` or `RESERVED`. Default to `PAUSED`.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QueueArgs].
  /// [concurrentJobs] The maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, specify the number of jobs you can process concurrently in your reservation plan instead.
  /// [description] A description of the queue
  /// [name] A unique identifier describing the queue
  /// [pricingPlan] Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are `ON_DEMAND` or `RESERVED`. Default to `ON_DEMAND`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationPlanSettings] A detail pricing plan of the  reserved queue. See below.
  /// [status] A status of the queue. Valid values are `ACTIVE` or `RESERVED`. Default to `PAUSED`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  QueueArgs({
    pulumi.Output<int>? concurrentJobs,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pricingPlan,
    pulumi.Output<String>? region,
    pulumi.Output<QueueReservationPlanSettings>? reservationPlanSettings,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      concurrentJobs = pulumi.Input.asOptionalInput<int>(concurrentJobs),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      pricingPlan = pulumi.Input.asOptionalInput<String>(pricingPlan),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationPlanSettings = pulumi.Input.asOptionalInput<QueueReservationPlanSettings>(reservationPlanSettings),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrentJobs': ?concurrentJobs,
      'description': ?description,
      'name': ?name,
      'pricingPlan': ?pricingPlan,
      'region': ?region,
      'reservationPlanSettings': ?pulumi.Input.mapOptionalInputValue<QueueReservationPlanSettings, Map<String, dynamic>>(reservationPlanSettings, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      concurrentJobs: map['concurrentJobs'] == null ? null : pulumi.Output.create<int>(map['concurrentJobs'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pricingPlan: map['pricingPlan'] == null ? null : pulumi.Output.create<String>(map['pricingPlan'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservationPlanSettings: map['reservationPlanSettings'] == null ? null : pulumi.Output.create<QueueReservationPlanSettings>(QueueReservationPlanSettings.fromMap((map['reservationPlanSettings'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

