import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_authorization.dart';
import 'cluster_control_plane.dart';
import 'cluster_control_plane_encryption.dart';
import 'cluster_fleet.dart';
import 'cluster_maintenance_event.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_networking.dart';
import 'cluster_system_addons_config.dart';

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
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.edgecontainer.Cluster("default", {
///     name: "local-control-plane-cluster",
///     location: "us-central1",
///     authorization: {
///         adminUsers: {
///             username: "admin@hashicorptest.com",
///         },
///     },
///     networking: {
///         clusterIpv4CidrBlocks: ["10.0.0.0/16"],
///         servicesIpv4CidrBlocks: ["10.1.0.0/16"],
///     },
///     fleet: {
///         project: project.then(project => `projects/${project.number}`),
///     },
///     externalLoadBalancerIpv4AddressPools: ["10.100.0.0-10.100.0.10"],
///     controlPlane: {
///         local: {
///             nodeLocation: "us-central1-edge-example-edgesite",
///             nodeCount: 1,
///             machineFilter: "machine-name",
///             sharedDeploymentPolicy: "ALLOWED",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.edgecontainer.Cluster("default",
///     name="local-control-plane-cluster",
///     location="us-central1",
///     authorization={
///         "admin_users": {
///             "username": "admin@hashicorptest.com",
///         },
///     },
///     networking={
///         "cluster_ipv4_cidr_blocks": ["10.0.0.0/16"],
///         "services_ipv4_cidr_blocks": ["10.1.0.0/16"],
///     },
///     fleet={
///         "project": f"projects/{project.number}",
///     },
///     external_load_balancer_ipv4_address_pools=["10.100.0.0-10.100.0.10"],
///     control_plane={
///         "local": {
///             "node_location": "us-central1-edge-example-edgesite",
///             "node_count": 1,
///             "machine_filter": "machine-name",
///             "shared_deployment_policy": "ALLOWED",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var @default = new Gcp.EdgeContainer.Cluster("default", new()
///     {
///         Name = "local-control-plane-cluster",
///         Location = "us-central1",
///         Authorization = new Gcp.EdgeContainer.Inputs.ClusterAuthorizationArgs
///         {
///             AdminUsers = new Gcp.EdgeContainer.Inputs.ClusterAuthorizationAdminUsersArgs
///             {
///                 Username = "admin@hashicorptest.com",
///             },
///         },
///         Networking = new Gcp.EdgeContainer.Inputs.ClusterNetworkingArgs
///         {
///             ClusterIpv4CidrBlocks = new[]
///             {
///                 "10.0.0.0/16",
///             },
///             ServicesIpv4CidrBlocks = new[]
///             {
///                 "10.1.0.0/16",
///             },
///         },
///         Fleet = new Gcp.EdgeContainer.Inputs.ClusterFleetArgs
///         {
///             Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         },
///         ExternalLoadBalancerIpv4AddressPools = new[]
///         {
///             "10.100.0.0-10.100.0.10",
///         },
///         ControlPlane = new Gcp.EdgeContainer.Inputs.ClusterControlPlaneArgs
///         {
///             Local = new Gcp.EdgeContainer.Inputs.ClusterControlPlaneLocalArgs
///             {
///                 NodeLocation = "us-central1-edge-example-edgesite",
///                 NodeCount = 1,
///                 MachineFilter = "machine-name",
///                 SharedDeploymentPolicy = "ALLOWED",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgecontainer"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edgecontainer.NewCluster(ctx, "default", &edgecontainer.ClusterArgs{
/// 			Name:     pulumi.String("local-control-plane-cluster"),
/// 			Location: pulumi.String("us-central1"),
/// 			Authorization: &edgecontainer.ClusterAuthorizationArgs{
/// 				AdminUsers: &edgecontainer.ClusterAuthorizationAdminUsersArgs{
/// 					Username: pulumi.String("admin@hashicorptest.com"),
/// 				},
/// 			},
/// 			Networking: &edgecontainer.ClusterNetworkingArgs{
/// 				ClusterIpv4CidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 				ServicesIpv4CidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/16"),
/// 				},
/// 			},
/// 			Fleet: &edgecontainer.ClusterFleetArgs{
/// 				Project: pulumi.Sprintf("projects/%v", project.Number),
/// 			},
/// 			ExternalLoadBalancerIpv4AddressPools: pulumi.StringArray{
/// 				pulumi.String("10.100.0.0-10.100.0.10"),
/// 			},
/// 			ControlPlane: &edgecontainer.ClusterControlPlaneArgs{
/// 				Local: &edgecontainer.ClusterControlPlaneLocalArgs{
/// 					NodeLocation:           pulumi.String("us-central1-edge-example-edgesite"),
/// 					NodeCount:              pulumi.Int(1),
/// 					MachineFilter:          pulumi.String("machine-name"),
/// 					SharedDeploymentPolicy: pulumi.String("ALLOWED"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .name("local-control-plane-cluster")
///             .location("us-central1")
///             .authorization(ClusterAuthorizationArgs.builder()
///                 .adminUsers(ClusterAuthorizationAdminUsersArgs.builder()
///                     .username("admin@hashicorptest.com")
///                     .build())
///                 .build())
///             .networking(ClusterNetworkingArgs.builder()
///                 .clusterIpv4CidrBlocks("10.0.0.0/16")
///                 .servicesIpv4CidrBlocks("10.1.0.0/16")
///                 .build())
///             .fleet(ClusterFleetArgs.builder()
///                 .project(String.format("projects/%s", project.number()))
///                 .build())
///             .externalLoadBalancerIpv4AddressPools("10.100.0.0-10.100.0.10")
///             .controlPlane(ClusterControlPlaneArgs.builder()
///                 .local(ClusterControlPlaneLocalArgs.builder()
///                     .nodeLocation("us-central1-edge-example-edgesite")
///                     .nodeCount(1)
///                     .machineFilter("machine-name")
///                     .sharedDeploymentPolicy("ALLOWED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:edgecontainer:Cluster
///     properties:
///       name: local-control-plane-cluster
///       location: us-central1
///       authorization:
///         adminUsers:
///           username: admin@hashicorptest.com
///       networking:
///         clusterIpv4CidrBlocks:
///           - 10.0.0.0/16
///         servicesIpv4CidrBlocks:
///           - 10.1.0.0/16
///       fleet:
///         project: projects/${project.number}
///       externalLoadBalancerIpv4AddressPools:
///         - 10.100.0.0-10.100.0.10
///       controlPlane:
///         local:
///           nodeLocation: us-central1-edge-example-edgesite
///           nodeCount: 1
///           machineFilter: machine-name
///           sharedDeploymentPolicy: ALLOWED
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
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
class Cluster extends pulumi.CustomResource {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAuthorization> authorization;

  /// The PEM-encoded public certificate of the cluster's CA.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> clusterCaCertificate;

  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  late final pulumi.Output<ClusterControlPlane?> controlPlane;

  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  late final pulumi.Output<ClusterControlPlaneEncryption>
      controlPlaneEncryption;

  /// The control plane release version.
  late final pulumi.Output<String> controlPlaneVersion;

  /// (Output)
  /// The time when the maintenance event request was created.
  late final pulumi.Output<String> createTime;

  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  late final pulumi.Output<int> defaultMaxPodsPerNode;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The IP address of the Kubernetes API server.
  late final pulumi.Output<String> endpoint;

  /// Address pools for cluster data plane external load balancing.
  late final pulumi.Output<List<String>> externalLoadBalancerIpv4AddressPools;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  late final pulumi.Output<ClusterFleet> fleet;

  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// All the maintenance events scheduled for the cluster, including the ones
  /// ongoing, planned for the future and done in the past (up to 90 days).
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterMaintenanceEvent>> maintenanceEvents;

  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  late final pulumi.Output<ClusterMaintenancePolicy> maintenancePolicy;

  /// The GDCE cluster name.
  late final pulumi.Output<String> name;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  late final pulumi.Output<ClusterNetworking> networking;

  /// The lowest release version among all worker nodes. This field can be empty
  /// if the cluster does not have any worker nodes.
  late final pulumi.Output<String> nodeVersion;

  /// The port number of the Kubernetes API server.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  late final pulumi.Output<String> releaseChannel;

  /// Indicates the status of the cluster.
  late final pulumi.Output<String> status;

  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  late final pulumi.Output<ClusterSystemAddonsConfig> systemAddonsConfig;

  /// The target cluster version. For example: "1.5.0".
  late final pulumi.Output<String> targetVersion;

  /// (Output)
  /// The time when the maintenance event message was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_edgecontainer_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
    this.fleet = registerOutput<ClusterFleet>('fleet');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenanceEvents =
        registerOutput<List<ClusterMaintenanceEvent>>('maintenanceEvents');
    this.maintenancePolicy =
        registerOutput<ClusterMaintenancePolicy>('maintenancePolicy');
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
