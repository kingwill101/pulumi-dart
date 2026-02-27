import 'package:pulumi/pulumi.dart' hide Config;
import 'authorization_response.dart';
import 'fleet_response3.dart';
import 'resource_status_response4.dart';
import 'validation_check_response.dart';
import 'vmware_aagconfig_response.dart';
import 'vmware_auto_repair_config_response.dart';
import 'vmware_cluster_args.dart';
import 'vmware_cluster_upgrade_policy_response.dart';
import 'vmware_control_plane_node_config_response.dart';
import 'vmware_dataplane_v2_config_response.dart';
import 'vmware_load_balancer_config_response.dart';
import 'vmware_network_config_response.dart';
import 'vmware_storage_config_response.dart';
import 'vmware_vcenter_config_response.dart';

/// Creates a new VMware user cluster in a given project and location.
class VmwareCluster extends CustomResource {
  /// The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  late final Output<String> adminClusterMembership;

  /// The resource name of the VMware admin cluster hosting this user cluster.
  late final Output<String> adminClusterName;

  /// Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final Output<Map<String, String>> annotations;

  /// AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  late final Output<VmwareAAGConfigResponse> antiAffinityGroups;

  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  late final Output<AuthorizationResponse> authorization;

  /// Configuration for auto repairing.
  late final Output<VmwareAutoRepairConfigResponse> autoRepairConfig;

  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  late final Output<VmwareControlPlaneNodeConfigResponse> controlPlaneNode;

  /// The time at which VMware user cluster was created.
  late final Output<String> createTime;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  late final Output<VmwareDataplaneV2ConfigResponse> dataplaneV2;

  /// The time at which VMware user cluster was deleted.
  late final Output<String> deleteTime;

  /// A human readable description of this VMware user cluster.
  late final Output<String> description;

  /// Disable bundled ingress.
  late final Output<bool> disableBundledIngress;

  /// Enable control plane V2. Default to false.
  late final Output<bool> enableControlPlaneV2;

  /// The DNS name of VMware user cluster's API server.
  late final Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final Output<String> etag;

  /// Fleet configuration for the cluster.
  late final Output<FleetResponse3> fleet;

  /// Load balancer configuration.
  late final Output<VmwareLoadBalancerConfigResponse> loadBalancer;

  /// The object name of the VMware OnPremUserCluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  late final Output<String> localName;
  late final Output<String> location;

  /// Immutable. The VMware user cluster resource name.
  late final Output<String> name;

  /// The VMware user cluster network configuration.
  late final Output<VmwareNetworkConfigResponse> networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  late final Output<String> onPremVersion;
  late final Output<String> project;

  /// If set, there are currently changes in flight to the VMware user cluster.
  late final Output<bool> reconciling;

  /// The current state of VMware user cluster.
  late final Output<String> state;

  /// ResourceStatus representing detailed cluster state.
  late final Output<ResourceStatusResponse4> status;

  /// Storage configuration.
  late final Output<VmwareStorageConfigResponse> storage;

  /// The unique identifier of the VMware user cluster.
  late final Output<String> uid;

  /// The time at which VMware user cluster was last updated.
  late final Output<String> updateTime;

  /// Specifies upgrade policy for the cluster.
  late final Output<VmwareClusterUpgradePolicyResponse> upgradePolicy;

  /// ValidationCheck represents the result of the preflight check job.
  late final Output<ValidationCheckResponse> validationCheck;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  late final Output<VmwareVCenterConfigResponse> vcenter;

  /// Enable VM tracking.
  late final Output<bool> vmTrackingEnabled;

  /// User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  late final Output<String?> vmwareClusterId;

  VmwareCluster(
    String name, {
    VmwareClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:VmwareCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminClusterMembership =
        registerOutput<String>('adminClusterMembership');
    this.adminClusterName = registerOutput<String>('adminClusterName');
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.antiAffinityGroups =
        registerOutput<VmwareAAGConfigResponse>('antiAffinityGroups');
    this.authorization = registerOutput<AuthorizationResponse>('authorization');
    this.autoRepairConfig =
        registerOutput<VmwareAutoRepairConfigResponse>('autoRepairConfig');
    this.controlPlaneNode =
        registerOutput<VmwareControlPlaneNodeConfigResponse>(
            'controlPlaneNode');
    this.createTime = registerOutput<String>('createTime');
    this.dataplaneV2 =
        registerOutput<VmwareDataplaneV2ConfigResponse>('dataplaneV2');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.disableBundledIngress = registerOutput<bool>('disableBundledIngress');
    this.enableControlPlaneV2 = registerOutput<bool>('enableControlPlaneV2');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleet = registerOutput<FleetResponse3>('fleet');
    this.loadBalancer =
        registerOutput<VmwareLoadBalancerConfigResponse>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<VmwareNetworkConfigResponse>('networkConfig');
    this.onPremVersion = registerOutput<String>('onPremVersion');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<ResourceStatusResponse4>('status');
    this.storage = registerOutput<VmwareStorageConfigResponse>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradePolicy =
        registerOutput<VmwareClusterUpgradePolicyResponse>('upgradePolicy');
    this.validationCheck =
        registerOutput<ValidationCheckResponse>('validationCheck');
    this.vcenter = registerOutput<VmwareVCenterConfigResponse>('vcenter');
    this.vmTrackingEnabled = registerOutput<bool>('vmTrackingEnabled');
    this.vmwareClusterId = registerOutput<String?>('vmwareClusterId');
  }
}
