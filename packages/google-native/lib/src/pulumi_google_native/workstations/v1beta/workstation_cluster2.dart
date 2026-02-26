import 'package:pulumi/pulumi.dart';
import 'domain_config_response.dart';
import 'private_cluster_config_response6.dart';
import 'status_response35.dart';
import 'workstation_cluster_args2.dart';

/// Creates a new workstation cluster.
class WorkstationCluster2 extends CustomResource {
  /// Optional. Client-specified annotations.
  late final Output<Map<String, String>> annotations;

  /// Status conditions describing the workstation cluster's current state.
  late final Output<List<StatusResponse35>> conditions;

  /// The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  late final Output<String> controlPlaneIp;

  /// Time when this workstation cluster was created.
  late final Output<String> createTime;

  /// Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  late final Output<bool> degraded;

  /// Time when this workstation cluster was soft-deleted.
  late final Output<String> deleteTime;

  /// Optional. Human-readable name for this workstation cluster.
  late final Output<String> displayName;

  /// Optional. Configuration options for a custom domain.
  late final Output<DomainConfigResponse> domainConfig;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Identifier. Full name of this workstation cluster.
  late final Output<String> name;

  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  late final Output<String> network;

  /// Optional. Configuration for private workstation cluster.
  late final Output<PrivateClusterConfigResponse6> privateClusterConfig;
  late final Output<String> project;

  /// Indicates whether this workstation cluster is currently being updated to match its intended state.
  late final Output<bool> reconciling;

  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  late final Output<String> subnetwork;

  /// A system-assigned unique identifier for this workstation cluster.
  late final Output<String> uid;

  /// Time when this workstation cluster was most recently updated.
  late final Output<String> updateTime;

  /// Required. ID to use for the workstation cluster.
  late final Output<String> workstationClusterId;

  WorkstationCluster2(
    String name, {
    WorkstationClusterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workstations/v1beta:WorkstationCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.conditions = registerOutput<List<StatusResponse35>>('conditions');
    this.controlPlaneIp = registerOutput<String>('controlPlaneIp');
    this.createTime = registerOutput<String>('createTime');
    this.degraded = registerOutput<bool>('degraded');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.domainConfig = registerOutput<DomainConfigResponse>('domainConfig');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.privateClusterConfig =
        registerOutput<PrivateClusterConfigResponse6>('privateClusterConfig');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
  }
}
