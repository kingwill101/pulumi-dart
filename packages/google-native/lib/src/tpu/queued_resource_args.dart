// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guaranteed.dart';
import 'queueing_policy.dart';
import 'tpu.dart';

/// {@template pulumi_tpu_v2alpha1_queued_resource_args_doc}
/// The set of arguments for QueuedResource.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2alpha1_queued_resource_args_doc}
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

  /// Creates a new [QueuedResourceArgs].
  /// [bestEffort] The BestEffort tier.
  /// [guaranteed] The Guaranteed tier.
  /// [location] Optional.
  /// [project] Optional.
  /// [queuedResourceId] The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  /// [queueingPolicy] The queueing policy of the QueuedRequest.
  /// [requestId] Idempotent request UUID.
  /// [reservationName] Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  /// [spot] Optional. The Spot tier.
  /// [tpu] Defines a TPU resource.
  QueuedResourceArgs({
    Map<String, dynamic>? bestEffort,
    Guaranteed? guaranteed,
    String? location,
    String? project,
    String? queuedResourceId,
    QueueingPolicy? queueingPolicy,
    String? requestId,
    String? reservationName,
    Map<String, dynamic>? spot,
    Tpu? tpu,
  }) : bestEffort = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         bestEffort,
       ),
       guaranteed = pulumi.Input.asOptionalInput<Guaranteed>(guaranteed),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       queuedResourceId = pulumi.Input.asOptionalInput<String>(
         queuedResourceId,
       ),
       queueingPolicy = pulumi.Input.asOptionalInput<QueueingPolicy>(
         queueingPolicy,
       ),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       reservationName = pulumi.Input.asOptionalInput<String>(reservationName),
       spot = pulumi.Input.asOptionalInput<Map<String, dynamic>>(spot),
       tpu = pulumi.Input.asOptionalInput<Tpu>(tpu);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestEffort': ?bestEffort,
      'guaranteed':
          ?pulumi.Input.mapOptionalInputValue<Guaranteed, Map<String, dynamic>>(
            guaranteed,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'project': ?project,
      'queuedResourceId': ?queuedResourceId,
      'queueingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            QueueingPolicy,
            Map<String, dynamic>
          >(queueingPolicy, (value) => value.toMap()),
      'requestId': ?requestId,
      'reservationName': ?reservationName,
      'spot': ?spot,
      'tpu': ?pulumi.Input.mapOptionalInputValue<Tpu, Map<String, dynamic>>(
        tpu,
        (value) => value.toMap(),
      ),
    };
  }

  factory QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return QueuedResourceArgs(
      bestEffort: map['bestEffort'] == null
          ? null
          : (map['bestEffort'] as Map).cast<String, dynamic>(),
      guaranteed: map['guaranteed'] == null
          ? null
          : Guaranteed.fromMap(
              (map['guaranteed'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      queuedResourceId: map['queuedResourceId'] == null
          ? null
          : map['queuedResourceId'] as String,
      queueingPolicy: map['queueingPolicy'] == null
          ? null
          : QueueingPolicy.fromMap(
              (map['queueingPolicy'] as Map).cast<String, dynamic>(),
            ),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      reservationName: map['reservationName'] == null
          ? null
          : map['reservationName'] as String,
      spot: map['spot'] == null
          ? null
          : (map['spot'] as Map).cast<String, dynamic>(),
      tpu: map['tpu'] == null
          ? null
          : Tpu.fromMap((map['tpu'] as Map).cast<String, dynamic>()),
    );
  }
}
