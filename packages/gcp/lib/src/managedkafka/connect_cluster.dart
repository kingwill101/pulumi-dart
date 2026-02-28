import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_cluster_args.dart';
import 'connect_cluster_capacity_config.dart';
import 'connect_cluster_gcp_config.dart';

/// A Managed Service for Kafka Connect cluster.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Connect Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const mkcSecondarySubnet = new gcp.compute.Subnetwork("mkc_secondary_subnet", {
///     project: project.then(project => project.projectId),
///     name: "my-secondary-subnetwork",
///     ipCidrRange: "10.3.0.0/16",
///     region: "us-central1",
///     network: "default",
/// });
/// const cluster = new gcp.managedkafka.Cluster("cluster", {
///     clusterId: "my-cluster",
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "3",
///         memoryBytes: "3221225472",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///             }],
///         },
///     },
/// });
/// const example = new gcp.managedkafka.ConnectCluster("example", {
///     connectClusterId: "my-connect-cluster",
///     kafkaCluster: pulumi.all([project, cluster.clusterId]).apply(([project, clusterId]) => `projects/${project.projectId}/locations/us-central1/clusters/${clusterId}`),
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "12",
///         memoryBytes: "21474836480",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 primarySubnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///                 additionalSubnets: [mkcSecondarySubnet.id],
///                 dnsDomainNames: [Promise.all([cluster.clusterId, project]).then(([clusterId, project]) => `${clusterId}.us-central1.managedkafka.${project.projectId}.cloud.goog`)],
///             }],
///         },
///     },
///     labels: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// mkc_secondary_subnet = gcp.compute.Subnetwork("mkc_secondary_subnet",
///     project=project.project_id,
///     name="my-secondary-subnetwork",
///     ip_cidr_range="10.3.0.0/16",
///     region="us-central1",
///     network="default")
/// cluster = gcp.managedkafka.Cluster("cluster",
///     cluster_id="my-cluster",
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "3",
///         "memory_bytes": "3221225472",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///             }],
///         },
///     })
/// example = gcp.managedkafka.ConnectCluster("example",
///     connect_cluster_id="my-connect-cluster",
///     kafka_cluster=cluster.cluster_id.apply(lambda cluster_id: f"projects/{project.project_id}/locations/us-central1/clusters/{cluster_id}"),
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "12",
///         "memory_bytes": "21474836480",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "primary_subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///                 "additional_subnets": [mkc_secondary_subnet.id],
///                 "dns_domain_names": [cluster.cluster_id.apply(lambda cluster_id: f"{cluster_id}.us-central1.managedkafka.{project.project_id}.cloud.goog")],
///             }],
///         },
///     },
///     labels={
///         "key": "value",
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
///     var mkcSecondarySubnet = new Gcp.Compute.Subnetwork("mkc_secondary_subnet", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Name = "my-secondary-subnetwork",
///         IpCidrRange = "10.3.0.0/16",
///         Region = "us-central1",
///         Network = "default",
///     });
///
///     var cluster = new Gcp.ManagedKafka.Cluster("cluster", new()
///     {
///         ClusterId = "my-cluster",
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
///         {
///             VcpuCount = "3",
///             MemoryBytes = "3221225472",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                     },
///                 },
///             },
///         },
///     });
///
///     var example = new Gcp.ManagedKafka.ConnectCluster("example", new()
///     {
///         ConnectClusterId = "my-connect-cluster",
///         KafkaCluster = Output.Tuple(project, cluster.ClusterId).Apply(values =>
///         {
///             var project = values.Item1;
///             var clusterId = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/clusters/{clusterId}";
///         }),
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ConnectClusterCapacityConfigArgs
///         {
///             VcpuCount = "12",
///             MemoryBytes = "21474836480",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ConnectClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ConnectClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ConnectClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         PrimarySubnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                         AdditionalSubnets = new[]
///                         {
///                             mkcSecondarySubnet.Id,
///                         },
///                         DnsDomainNames = new[]
///                         {
///                             Output.Tuple(cluster.ClusterId, project).Apply(values =>
///                             {
///                                 var clusterId = values.Item1;
///                                 var project = values.Item2;
///                                 return $"{clusterId}.us-central1.managedkafka.{project.Apply(getProjectResult => getProjectResult.ProjectId)}.cloud.goog";
///                             }),
///                         },
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "key", "value" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/managedkafka"
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
/// 		mkcSecondarySubnet, err := compute.NewSubnetwork(ctx, "mkc_secondary_subnet", &compute.SubnetworkArgs{
/// 			Project:     pulumi.String(project.ProjectId),
/// 			Name:        pulumi.String("my-secondary-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.3.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := managedkafka.NewCluster(ctx, "cluster", &managedkafka.ClusterArgs{
/// 			ClusterId: pulumi.String("my-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("3"),
/// 				MemoryBytes: pulumi.String("3221225472"),
/// 			},
/// 			GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewConnectCluster(ctx, "example", &managedkafka.ConnectClusterArgs{
/// 			ConnectClusterId: pulumi.String("my-connect-cluster"),
/// 			KafkaCluster: cluster.ClusterId.ApplyT(func(clusterId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/clusters/%v", project.ProjectId, clusterId), nil
/// 			}).(pulumi.StringOutput),
/// 			Location: pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ConnectClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("12"),
/// 				MemoryBytes: pulumi.String("21474836480"),
/// 			},
/// 			GcpConfig: &managedkafka.ConnectClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ConnectClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ConnectClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ConnectClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							PrimarySubnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 							AdditionalSubnets: pulumi.StringArray{
/// 								mkcSecondarySubnet.ID(),
/// 							},
/// 							DnsDomainNames: pulumi.StringArray{
/// 								cluster.ClusterId.ApplyT(func(clusterId string) (string, error) {
/// 									return fmt.Sprintf("%v.us-central1.managedkafka.%v.cloud.goog", clusterId, project.ProjectId), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.ConnectCluster;
/// import com.pulumi.gcp.managedkafka.ConnectClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectClusterGcpConfigAccessConfigArgs;
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
///         var mkcSecondarySubnet = new Subnetwork("mkcSecondarySubnet", SubnetworkArgs.builder()
///             .project(project.projectId())
///             .name("my-secondary-subnetwork")
///             .ipCidrRange("10.3.0.0/16")
///             .region("us-central1")
///             .network("default")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterId("my-cluster")
///             .location("us-central1")
///             .capacityConfig(ClusterCapacityConfigArgs.builder()
///                 .vcpuCount("3")
///                 .memoryBytes("3221225472")
///                 .build())
///             .gcpConfig(ClusterGcpConfigArgs.builder()
///                 .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var example = new ConnectCluster("example", ConnectClusterArgs.builder()
///             .connectClusterId("my-connect-cluster")
///             .kafkaCluster(cluster.clusterId().applyValue(_clusterId -> String.format("projects/%s/locations/us-central1/clusters/%s", project.projectId(),_clusterId)))
///             .location("us-central1")
///             .capacityConfig(ConnectClusterCapacityConfigArgs.builder()
///                 .vcpuCount("12")
///                 .memoryBytes("21474836480")
///                 .build())
///             .gcpConfig(ConnectClusterGcpConfigArgs.builder()
///                 .accessConfig(ConnectClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ConnectClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .primarySubnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .additionalSubnets(mkcSecondarySubnet.id())
///                         .dnsDomainNames(cluster.clusterId().applyValue(_clusterId -> String.format("%s.us-central1.managedkafka.%s.cloud.goog", _clusterId,project.projectId())))
///                         .build())
///                     .build())
///                 .build())
///             .labels(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mkcSecondarySubnet:
///     type: gcp:compute:Subnetwork
///     name: mkc_secondary_subnet
///     properties:
///       project: ${project.projectId}
///       name: my-secondary-subnetwork
///       ipCidrRange: 10.3.0.0/16
///       region: us-central1
///       network: default
///   cluster:
///     type: gcp:managedkafka:Cluster
///     properties:
///       clusterId: my-cluster
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 3
///         memoryBytes: 3.221225472e+09
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
///   example:
///     type: gcp:managedkafka:ConnectCluster
///     properties:
///       connectClusterId: my-connect-cluster
///       kafkaCluster: projects/${project.projectId}/locations/us-central1/clusters/${cluster.clusterId}
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 12
///         memoryBytes: 2.147483648e+10
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - primarySubnet: projects/${project.number}/regions/us-central1/subnetworks/default
///               additionalSubnets:
///                 - ${mkcSecondarySubnet.id}
///               dnsDomainNames:
///                 - ${cluster.clusterId}.us-central1.managedkafka.${project.projectId}.cloud.goog
///       labels:
///         key: value
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
/// ConnectCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster_id}}`
///
/// * `{{project}}/{{location}}/{{connect_cluster_id}}`
///
/// * `{{location}}/{{connect_cluster_id}}`
///
/// When using the `pulumi import` command, ConnectCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connectCluster:ConnectCluster default projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connectCluster:ConnectCluster default {{project}}/{{location}}/{{connect_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connectCluster:ConnectCluster default {{location}}/{{connect_cluster_id}}
/// ```
class ConnectCluster extends pulumi.CustomResource {
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  late final pulumi.Output<ConnectClusterCapacityConfig> capacityConfig;

  /// The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  late final pulumi.Output<String> connectClusterId;

  /// The time when the cluster was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  late final pulumi.Output<ConnectClusterGcpConfig> gcpConfig;

  /// The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  late final pulumi.Output<String> kafkaCluster;

  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The name of the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER_ID`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the connect cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  late final pulumi.Output<String> state;

  /// The time when the cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConnectCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectCluster]. {@macro pulumi_managedkafka_connect_cluster_connect_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectCluster(
    String name, {
    ConnectClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/connectCluster:ConnectCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacityConfig =
        registerOutput<ConnectClusterCapacityConfig>('capacityConfig');
    this.connectClusterId = registerOutput<String>('connectClusterId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gcpConfig = registerOutput<ConnectClusterGcpConfig>('gcpConfig');
    this.kafkaCluster = registerOutput<String>('kafkaCluster');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
