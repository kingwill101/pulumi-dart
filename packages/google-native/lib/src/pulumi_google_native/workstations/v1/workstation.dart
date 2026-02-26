import 'package:pulumi/pulumi.dart';
import 'workstation_args.dart';

/// Creates a new workstation.
class Workstation extends CustomResource {
  /// Optional. Client-specified annotations.
  late final Output<Map<String, String>> annotations;

  /// Time when this workstation was created.
  late final Output<String> createTime;

  /// Time when this workstation was soft-deleted.
  late final Output<String> deleteTime;

  /// Optional. Human-readable name for this workstation.
  late final Output<String> displayName;

  /// Optional. Environment variables passed to the workstation container's entrypoint.
  late final Output<Map<String, String>> env;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Host to which clients can send HTTPS traffic that will be received by the workstation. Authorized traffic will be received to the workstation as HTTP on port 80. To send traffic to a different port, clients may prefix the host with the destination port in the format `{port}-{host}`.
  late final Output<String> host;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Identifier. Full name of this workstation.
  late final Output<String> name;
  late final Output<String> project;

  /// Indicates whether this workstation is currently being updated to match its intended state.
  late final Output<bool> reconciling;

  /// Time when this workstation was most recently successfully started, regardless of the workstation's initial state.
  late final Output<String> startTime;

  /// Current state of the workstation.
  late final Output<String> state;

  /// A system-assigned unique identifier for this workstation.
  late final Output<String> uid;

  /// Time when this workstation was most recently updated.
  late final Output<String> updateTime;
  late final Output<String> workstationClusterId;
  late final Output<String> workstationConfigId;

  /// Required. ID to use for the workstation.
  late final Output<String> workstationId;

  Workstation(
    String name, {
    WorkstationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workstations/v1:Workstation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.env = Output.createUnknown<Map<String, String>>();
    this.etag = Output.createUnknown<String>();
    this.host = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.workstationClusterId = Output.createUnknown<String>();
    this.workstationConfigId = Output.createUnknown<String>();
    this.workstationId = Output.createUnknown<String>();
  }
}
