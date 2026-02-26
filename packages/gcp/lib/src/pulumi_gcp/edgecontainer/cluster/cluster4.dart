import 'package:pulumi/pulumi.dart';
import '../cluster_authorization/cluster_authorization.dart';
import '../cluster_control_plane/cluster_control_plane.dart';
import '../cluster_control_plane_encryption/cluster_control_plane_encryption.dart';
import '../cluster_fleet/cluster_fleet2.dart';
import '../cluster_maintenance_event/cluster_maintenance_event.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy2.dart';
import '../cluster_networking/cluster_networking.dart';
import '../cluster_system_addons_config/cluster_system_addons_config.dart';
import 'cluster_args4.dart';

/// Cluster contains information about a Google Distributed Cloud Edge Kubernetes cluster.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/container/rest/v1/projects.locations.clusters)
/// * How-to Guides
/// * [Create and manage clusters](https://cloud.google.com/distributed-cloud/edge/latest/docs/clusters)
///
///
///
/// ## Example Usage
///
/// ### Edgecontainer Local Control Plane Cluster
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.edgecontainer.Cluster("default", {
/// name: "local-control-plane-cluster",
/// location: "us-central1",
/// authorization: {
/// adminUsers: {
/// username: "admin@hashicorptest.com",
/// },
/// },
/// networking: {
/// clusterIpv4CidrBlocks: ["10.0.0.0/16"],
/// servicesIpv4CidrBlocks: ["10.1.0.0/16"],
/// },
/// fleet: {
/// project: project.then(project => `projects/${project.number}`),
/// },
/// externalLoadBalancerIpv4AddressPools: ["10.100.0.0-10.100.0.10"],
/// controlPlane: {
/// local: {
/// nodeLocation: "us-central1-edge-example-edgesite",
/// nodeCount: 1,
/// machineFilter: "machine-name",
/// sharedDeploymentPolicy: "ALLOWED",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.edgecontainer.Cluster("default",
/// name="local-control-plane-cluster",
/// location="us-central1",
/// authorization={
/// "admin_users": {
/// "username": "admin@hashicorptest.com",
/// },
/// },
/// networking={
/// "cluster_ipv4_cidr_blocks": ["10.0.0.0/16"],
/// "services_ipv4_cidr_blocks": ["10.1.0.0/16"],
/// },
/// fleet={
/// "project": f"projects/{project.number}",
/// },
/// external_load_balancer_ipv4_address_pools=["10.100.0.0-10.100.0.10"],
/// control_plane={
/// "local": {
/// "node_location": "us-central1-edge-example-edgesite",
/// "node_count": 1,
/// "machine_filter": "machine-name",
/// "shared_deployment_policy": "ALLOWED",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var @default = new Gcp.EdgeContainer.Cluster("default", new()
/// {
/// Name = "local-control-plane-cluster",
/// Location = "us-central1",
/// Authorization = new Gcp.EdgeContainer.Inputs.ClusterAuthorizationArgs
/// {
/// AdminUsers = new Gcp.EdgeContainer.Inputs.ClusterAuthorizationAdminUsersArgs
/// {
/// Username = "admin@hashicorptest.com",
/// },
/// },
/// Networking = new Gcp.EdgeContainer.Inputs.ClusterNetworkingArgs
/// {
/// ClusterIpv4CidrBlocks = new[]
/// {
/// "10.0.0.0/16",
/// },
/// ServicesIpv4CidrBlocks = new[]
/// {
/// "10.1.0.0/16",
/// },
/// },
/// Fleet = new Gcp.EdgeContainer.Inputs.ClusterFleetArgs
/// {
/// Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
/// },
/// ExternalLoadBalancerIpv4AddressPools = new[]
/// {
/// "10.100.0.0-10.100.0.10",
/// },
/// ControlPlane = new Gcp.EdgeContainer.Inputs.ClusterControlPlaneArgs
/// {
/// Local = new Gcp.EdgeContainer.Inputs.ClusterControlPlaneLocalArgs
/// {
/// NodeLocation = "us-central1-edge-example-edgesite",
/// NodeCount = 1,
/// MachineFilter = "machine-name",
/// SharedDeploymentPolicy = "ALLOWED",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgecontainer"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = edgecontainer.NewCluster(ctx, "default", &edgecontainer.ClusterArgs{
/// Name:     pulumi.String("local-control-plane-cluster"),
/// Location: pulumi.String("us-central1"),
/// Authorization: &edgecontainer.ClusterAuthorizationArgs{
/// AdminUsers: &edgecontainer.ClusterAuthorizationAdminUsersArgs{
/// Username: pulumi.String("admin@hashicorptest.com"),
/// },
/// },
/// Networking: &edgecontainer.ClusterNetworkingArgs{
/// ClusterIpv4CidrBlocks: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// ServicesIpv4CidrBlocks: pulumi.StringArray{
/// pulumi.String("10.1.0.0/16"),
/// },
/// },
/// Fleet: &edgecontainer.ClusterFleetArgs{
/// Project: pulumi.Sprintf("projects/%v", project.Number),
/// },
/// ExternalLoadBalancerIpv4AddressPools: pulumi.StringArray{
/// pulumi.String("10.100.0.0-10.100.0.10"),
/// },
/// ControlPlane: &edgecontainer.ClusterControlPlaneArgs{
/// Local: &edgecontainer.ClusterControlPlaneLocalArgs{
/// NodeLocation:           pulumi.String("us-central1-edge-example-edgesite"),
/// NodeCount:              pulumi.Int(1),
/// MachineFilter:          pulumi.String("machine-name"),
/// SharedDeploymentPolicy: pulumi.String("ALLOWED"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.edgecontainer.Cluster;
/// import com.pulumi.gcp.edgecontainer.ClusterArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterAuthorizationArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterAuthorizationAdminUsersArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterNetworkingArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterFleetArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterControlPlaneArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterControlPlaneLocalArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var default_ = new Cluster("default", ClusterArgs.builder()
/// .name("local-control-plane-cluster")
/// .location("us-central1")
/// .authorization(ClusterAuthorizationArgs.builder()
/// .adminUsers(ClusterAuthorizationAdminUsersArgs.builder()
/// .username("admin@hashicorptest.com")
/// .build())
/// .build())
/// .networking(ClusterNetworkingArgs.builder()
/// .clusterIpv4CidrBlocks("10.0.0.0/16")
/// .servicesIpv4CidrBlocks("10.1.0.0/16")
/// .build())
/// .fleet(ClusterFleetArgs.builder()
/// .project(String.format("projects/%s", project.number()))
/// .build())
/// .externalLoadBalancerIpv4AddressPools("10.100.0.0-10.100.0.10")
/// .controlPlane(ClusterControlPlaneArgs.builder()
/// .local(ClusterControlPlaneLocalArgs.builder()
/// .nodeLocation("us-central1-edge-example-edgesite")
/// .nodeCount(1)
/// .machineFilter("machine-name")
/// .sharedDeploymentPolicy("ALLOWED")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:edgecontainer:Cluster
/// properties:
/// name: local-control-plane-cluster
/// location: us-central1
/// authorization:
/// adminUsers:
/// username: admin@hashicorptest.com
/// networking:
/// clusterIpv4CidrBlocks:
/// - 10.0.0.0/16
/// servicesIpv4CidrBlocks:
/// - 10.1.0.0/16
/// fleet:
/// project: projects/${project.number}
/// externalLoadBalancerIpv4AddressPools:
/// - 10.100.0.0-10.100.0.10
/// controlPlane:
/// local:
/// nodeLocation: us-central1-edge-example-edgesite
/// nodeCount: 1
/// machineFilter: machine-name
/// sharedDeploymentPolicy: ALLOWED
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/cluster:Cluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/cluster:Cluster default {{location}}/{{name}}
/// ```
class Cluster4 extends CustomResource {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  late final Output<ClusterAuthorization> authorization;

  /// The PEM-encoded public certificate of the cluster's CA.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> clusterCaCertificate;

  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  late final Output<ClusterControlPlane?> controlPlane;

  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  late final Output<ClusterControlPlaneEncryption> controlPlaneEncryption;

  /// The control plane release version.
  late final Output<String> controlPlaneVersion;

  /// (Output)
  /// The time when the maintenance event request was created.
  late final Output<String> createTime;

  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  late final Output<int> defaultMaxPodsPerNode;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The IP address of the Kubernetes API server.
  late final Output<String> endpoint;

  /// Address pools for cluster data plane external load balancing.
  late final Output<List<String>> externalLoadBalancerIpv4AddressPools;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  late final Output<ClusterFleet2> fleet;

  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the resource.
  late final Output<String> location;

  /// All the maintenance events scheduled for the cluster, including the ones
  /// ongoing, planned for the future and done in the past (up to 90 days).
  /// Structure is documented below.
  late final Output<List<ClusterMaintenanceEvent>> maintenanceEvents;

  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  late final Output<ClusterMaintenancePolicy2> maintenancePolicy;

  /// The GDCE cluster name.
  late final Output<String> name;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  late final Output<ClusterNetworking> networking;

  /// The lowest release version among all worker nodes. This field can be empty
  /// if the cluster does not have any worker nodes.
  late final Output<String> nodeVersion;

  /// The port number of the Kubernetes API server.
  late final Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  late final Output<String> releaseChannel;

  /// Indicates the status of the cluster.
  late final Output<String> status;

  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  late final Output<ClusterSystemAddonsConfig> systemAddonsConfig;

  /// The target cluster version. For example: "1.5.0".
  late final Output<String> targetVersion;

  /// (Output)
  /// The time when the maintenance event message was updated.
  late final Output<String> updateTime;

  Cluster4(
    String name, {
    ClusterArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorization = registerOutput<ClusterAuthorization>('authorization');
    this.clusterCaCertificate = registerOutput<String>('clusterCaCertificate');
    this.controlPlane = registerOutput<ClusterControlPlane?>('controlPlane');
    this.controlPlaneEncryption =
        registerOutput<ClusterControlPlaneEncryption>('controlPlaneEncryption');
    this.controlPlaneVersion = registerOutput<String>('controlPlaneVersion');
    this.createTime = registerOutput<String>('createTime');
    this.defaultMaxPodsPerNode = registerOutput<int>('defaultMaxPodsPerNode');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpoint = registerOutput<String>('endpoint');
    this.externalLoadBalancerIpv4AddressPools =
        registerOutput<List<String>>('externalLoadBalancerIpv4AddressPools');
    this.fleet = registerOutput<ClusterFleet2>('fleet');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenanceEvents =
        registerOutput<List<ClusterMaintenanceEvent>>('maintenanceEvents');
    this.maintenancePolicy =
        registerOutput<ClusterMaintenancePolicy2>('maintenancePolicy');
    this.name = registerOutput<String>('name');
    this.networking = registerOutput<ClusterNetworking>('networking');
    this.nodeVersion = registerOutput<String>('nodeVersion');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.releaseChannel = registerOutput<String>('releaseChannel');
    this.status = registerOutput<String>('status');
    this.systemAddonsConfig =
        registerOutput<ClusterSystemAddonsConfig>('systemAddonsConfig');
    this.targetVersion = registerOutput<String>('targetVersion');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
