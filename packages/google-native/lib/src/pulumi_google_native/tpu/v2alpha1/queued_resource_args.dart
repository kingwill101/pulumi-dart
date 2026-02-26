// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'guaranteed.dart';
import 'queueing_policy.dart';
import 'tpu.dart';

/// The set of arguments for QueuedResource.
class QueuedResourceArgs {
  /// The BestEffort tier.
  final Input<Map<String, dynamic>>? bestEffort;

  /// The Guaranteed tier.
  final Input<Guaranteed>? guaranteed;
  final Input<String>? location;
  final Input<String>? project;

  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  final Input<String>? queuedResourceId;

  /// The queueing policy of the QueuedRequest.
  final Input<QueueingPolicy>? queueingPolicy;

  /// Idempotent request UUID.
  final Input<String>? requestId;

  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  final Input<String>? reservationName;

  /// Optional. The Spot tier.
  final Input<Map<String, dynamic>>? spot;

  /// Defines a TPU resource.
  final Input<Tpu>? tpu;

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
          Input.mapOptionalInputValue<Guaranteed, Map<String, dynamic>>(
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
      map['queueingPolicy'] =
          Input.mapOptionalInputValue<QueueingPolicy, Map<String, dynamic>>(
              queueingPolicyValue, (value) => value.toMap());
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
      map['tpu'] = Input.mapOptionalInputValue<Tpu, Map<String, dynamic>>(
          tpuValue, (value) => value.toMap());
    }
    return map;
  }

  factory QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return QueuedResourceArgs(
      bestEffort:
          Input.asOptionalInput<Map<String, dynamic>>(map['bestEffort']),
      guaranteed: Input.asOptionalInput<Guaranteed>(map['guaranteed']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      queuedResourceId: Input.asOptionalInput<String>(map['queuedResourceId']),
      queueingPolicy:
          Input.asOptionalInput<QueueingPolicy>(map['queueingPolicy']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reservationName: Input.asOptionalInput<String>(map['reservationName']),
      spot: Input.asOptionalInput<Map<String, dynamic>>(map['spot']),
      tpu: Input.asOptionalInput<Tpu>(map['tpu']),
    );
  }
}
