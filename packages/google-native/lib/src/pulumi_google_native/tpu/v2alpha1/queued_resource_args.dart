// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guaranteed.dart';
import 'queueing_policy.dart';
import 'tpu.dart';

/// The set of arguments for QueuedResource.
class QueuedResourceArgs {
  /// The BestEffort tier.
  final pulumi.Input<Map<String, dynamic>>? bestEffort;

  /// The Guaranteed tier.
  final pulumi.Input<Guaranteed>? guaranteed;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  final pulumi.Input<String>? queuedResourceId;

  /// The queueing policy of the QueuedRequest.
  final pulumi.Input<QueueingPolicy>? queueingPolicy;

  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  final pulumi.Input<String>? reservationName;

  /// Optional. The Spot tier.
  final pulumi.Input<Map<String, dynamic>>? spot;

  /// Defines a TPU resource.
  final pulumi.Input<Tpu>? tpu;

  QueuedResourceArgs({
    this.bestEffort,
    this.guaranteed,
    this.location,
    this.project,
    this.queuedResourceId,
    this.queueingPolicy,
    this.requestId,
    this.reservationName,
    this.spot,
    this.tpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bestEffortValue = bestEffort;
    if (bestEffortValue != null) {
      map['bestEffort'] = bestEffortValue;
    }
    final guaranteedValue = guaranteed;
    if (guaranteedValue != null) {
      map['guaranteed'] =
          pulumi.Input.mapOptionalInputValue<Guaranteed, Map<String, dynamic>>(
              guaranteedValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queuedResourceIdValue = queuedResourceId;
    if (queuedResourceIdValue != null) {
      map['queuedResourceId'] = queuedResourceIdValue;
    }
    final queueingPolicyValue = queueingPolicy;
    if (queueingPolicyValue != null) {
      map['queueingPolicy'] = pulumi.Input.mapOptionalInputValue<QueueingPolicy,
          Map<String, dynamic>>(queueingPolicyValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final reservationNameValue = reservationName;
    if (reservationNameValue != null) {
      map['reservationName'] = reservationNameValue;
    }
    final spotValue = spot;
    if (spotValue != null) {
      map['spot'] = spotValue;
    }
    final tpuValue = tpu;
    if (tpuValue != null) {
      map['tpu'] =
          pulumi.Input.mapOptionalInputValue<Tpu, Map<String, dynamic>>(
              tpuValue, (value) => value.toMap());
    }
    return map;
  }

  factory QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return QueuedResourceArgs(
      bestEffort:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['bestEffort']),
      guaranteed: pulumi.Input.asOptionalInput<Guaranteed>(map['guaranteed']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queuedResourceId:
          pulumi.Input.asOptionalInput<String>(map['queuedResourceId']),
      queueingPolicy:
          pulumi.Input.asOptionalInput<QueueingPolicy>(map['queueingPolicy']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      reservationName:
          pulumi.Input.asOptionalInput<String>(map['reservationName']),
      spot: pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['spot']),
      tpu: pulumi.Input.asOptionalInput<Tpu>(map['tpu']),
    );
  }
}
