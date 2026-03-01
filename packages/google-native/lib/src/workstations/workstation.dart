import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_args.dart';

/// Creates a new workstation.
class Workstation extends pulumi.CustomResource {
  /// Optional. Client-specified annotations.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Time when this workstation was created.
  late final pulumi.Output<String> createTime;

  /// Time when this workstation was soft-deleted.
  late final pulumi.Output<String> deleteTime;

  /// Optional. Human-readable name for this workstation.
  late final pulumi.Output<String> displayName;

  /// Optional. Environment variables passed to the workstation container's entrypoint.
  late final pulumi.Output<Map<String, String>> env;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Host to which clients can send HTTPS traffic that will be received by the workstation. Authorized traffic will be received to the workstation as HTTP on port 80. To send traffic to a different port, clients may prefix the host with the destination port in the format `{port}-{host}`.
  late final pulumi.Output<String> host;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Identifier. Full name of this workstation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Indicates whether this workstation is currently being updated to match its intended state.
  late final pulumi.Output<bool> reconciling;

  /// Time when this workstation was most recently successfully started, regardless of the workstation's initial state.
  late final pulumi.Output<String> startTime;

  /// Current state of the workstation.
  late final pulumi.Output<String> state;

  /// A system-assigned unique identifier for this workstation.
  late final pulumi.Output<String> uid;

  /// Time when this workstation was most recently updated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> workstationClusterId;
  late final pulumi.Output<String> workstationConfigId;

  /// Required. ID to use for the workstation.
  late final pulumi.Output<String> workstationId;

  /// Creates a new [Workstation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workstation]. {@macro pulumi_workstations_v1_workstation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workstation(
    String name, {
    WorkstationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:workstations/v1:Workstation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.env = registerOutput<Map<String, String>>('env');
    this.etag = registerOutput<String>('etag');
    this.host = registerOutput<String>('host');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
    this.workstationId = registerOutput<String>('workstationId');
  }
}
