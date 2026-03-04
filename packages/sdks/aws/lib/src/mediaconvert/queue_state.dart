// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_reservation_plan_settings.dart';

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// The Arn of the queue
  final pulumi.Input<String>? arn;

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

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [QueueState].
  /// [arn] The Arn of the queue
  /// [concurrentJobs] The maximum number of jobs your queue can process concurrently. For on-demand queues, the value you enter is constrained by your service quotas for Maximum concurrent jobs, per on-demand queue and Maximum concurrent jobs, per account. For reserved queues, specify the number of jobs you can process concurrently in your reservation plan instead.
  /// [description] A description of the queue
  /// [name] A unique identifier describing the queue
  /// [pricingPlan] Specifies whether the pricing plan for the queue is on-demand or reserved. Valid values are `ON_DEMAND` or `RESERVED`. Default to `ON_DEMAND`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationPlanSettings] A detail pricing plan of the  reserved queue. See below.
  /// [status] A status of the queue. Valid values are `ACTIVE` or `RESERVED`. Default to `PAUSED`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  QueueState({
    this.arn,
    this.concurrentJobs,
    this.description,
    this.name,
    this.pricingPlan,
    this.region,
    this.reservationPlanSettings,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'concurrentJobs': ?concurrentJobs,
      'description': ?description,
      'name': ?name,
      'pricingPlan': ?pricingPlan,
      'region': ?region,
      'reservationPlanSettings':
          ?pulumi.Input.mapOptionalInputValue<
            QueueReservationPlanSettings,
            Map<String, dynamic>
          >(reservationPlanSettings, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      concurrentJobs: (() {
        final guardedValue = map['concurrentJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pricingPlan: (() {
        final guardedValue = map['pricingPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservationPlanSettings: (() {
        final guardedValue = map['reservationPlanSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QueueReservationPlanSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
