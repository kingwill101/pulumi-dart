// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../queue_reservation_plan_settings/queue_reservation_plan_settings.dart';

/// The set of arguments for Queue.
class QueueMediaconvertArgs {
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

  QueueMediaconvertArgs({
    this.concurrentJobs,
    this.description,
    this.name,
    this.pricingPlan,
    this.region,
    this.reservationPlanSettings,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final concurrentJobsValue = concurrentJobs;
    if (concurrentJobsValue != null) {
      map['concurrentJobs'] = concurrentJobsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pricingPlanValue = pricingPlan;
    if (pricingPlanValue != null) {
      map['pricingPlan'] = pricingPlanValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservationPlanSettingsValue = reservationPlanSettings;
    if (reservationPlanSettingsValue != null) {
      map['reservationPlanSettings'] = pulumi.Input.mapOptionalInputValue<
              QueueReservationPlanSettings, Map<String, dynamic>>(
          reservationPlanSettingsValue, (value) => value.toMap());
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory QueueMediaconvertArgs.fromMap(Map<String, dynamic> map) {
    return QueueMediaconvertArgs(
      concurrentJobs: pulumi.Input.asOptionalInput<int>(map['concurrentJobs']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pricingPlan: pulumi.Input.asOptionalInput<String>(map['pricingPlan']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      reservationPlanSettings:
          pulumi.Input.asOptionalInput<QueueReservationPlanSettings>(
              map['reservationPlanSettings']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
