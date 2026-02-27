import 'package:pulumi/pulumi.dart' hide Config;
import 'guaranteed_response.dart';
import 'queued_resource_args.dart';
import 'queued_resource_state_response.dart';
import 'queueing_policy_response.dart';
import 'tpu_response.dart';

/// Creates a QueuedResource TPU instance.
/// Auto-naming is currently not supported for this resource.
class QueuedResource extends CustomResource {
  /// The BestEffort tier.
  late final Output<Map<String, dynamic>> bestEffort;

  /// The time when the QueuedResource was created.
  late final Output<String> createTime;

  /// The Guaranteed tier.
  late final Output<GuaranteedResponse> guaranteed;
  late final Output<String> location;

  /// Immutable. The name of the QueuedResource.
  late final Output<String> name;
  late final Output<String> project;

  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  late final Output<String?> queuedResourceId;

  /// The queueing policy of the QueuedRequest.
  late final Output<QueueingPolicyResponse> queueingPolicy;

  /// Idempotent request UUID.
  late final Output<String?> requestId;

  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  late final Output<String> reservationName;

  /// Optional. The Spot tier.
  late final Output<Map<String, dynamic>> spot;

  /// State of the QueuedResource request.
  late final Output<QueuedResourceStateResponse> state;

  /// Defines a TPU resource.
  late final Output<TpuResponse> tpu;

  QueuedResource(
    String name, {
    QueuedResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:tpu/v2alpha1:QueuedResource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bestEffort = registerOutput<Map<String, dynamic>>('bestEffort');
    this.createTime = registerOutput<String>('createTime');
    this.guaranteed = registerOutput<GuaranteedResponse>('guaranteed');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.queuedResourceId = registerOutput<String?>('queuedResourceId');
    this.queueingPolicy =
        registerOutput<QueueingPolicyResponse>('queueingPolicy');
    this.requestId = registerOutput<String?>('requestId');
    this.reservationName = registerOutput<String>('reservationName');
    this.spot = registerOutput<Map<String, dynamic>>('spot');
    this.state = registerOutput<QueuedResourceStateResponse>('state');
    this.tpu = registerOutput<TpuResponse>('tpu');
  }
}
