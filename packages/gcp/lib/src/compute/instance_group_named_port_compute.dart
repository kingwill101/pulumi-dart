import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_named_port_args.dart';

/// Mange the named ports setting for a managed instance group without
/// managing the group as whole. This resource is primarily intended for use
/// with GKE-generated groups that shouldn't otherwise be managed by other
/// tools.
///
///
/// To get more information about InstanceGroupNamedPort, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroup)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/instance-groups/)
///
/// ## Example Usage
///
/// ### Instance Group Named Port Gke
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const containerNetwork = new gcp.compute.Network("container_network", {
///     name: "container-network",
///     autoCreateSubnetworks: false,
/// });
/// const containerSubnetwork = new gcp.compute.Subnetwork("container_subnetwork", {
///     name: "container-subnetwork",
///     region: "us-central1",
///     network: containerNetwork.name,
///     ipCidrRange: "10.0.36.0/24",
/// });
/// const myCluster = new gcp.container.Cluster("my_cluster", {
///     name: "my-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     network: containerNetwork.name,
///     subnetwork: containerSubnetwork.name,
///     ipAllocationPolicy: {
///         clusterIpv4CidrBlock: "/19",
///         servicesIpv4CidrBlock: "/22",
///     },
///     deletionProtection: true,
/// });
/// const myPort = new gcp.compute.InstanceGroupNamedPort("my_port", {
///     group: myCluster.nodePools.apply(nodePools => nodePools[0].instanceGroupUrls?.[0]),
///     zone: "us-central1-a",
///     name: "http",
///     port: 8080,
/// });
/// const myPorts = new gcp.compute.InstanceGroupNamedPort("my_ports", {
///     group: myCluster.nodePools.apply(nodePools => nodePools[0].instanceGroupUrls?.[0]),
///     zone: "us-central1-a",
///     name: "https",
///     port: 4443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// container_network = gcp.compute.Network("container_network",
///     name="container-network",
///     auto_create_subnetworks=False)
/// container_subnetwork = gcp.compute.Subnetwork("container_subnetwork",
///     name="container-subnetwork",
///     region="us-central1",
///     network=container_network.name,
///     ip_cidr_range="10.0.36.0/24")
/// my_cluster = gcp.container.Cluster("my_cluster",
///     name="my-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     network=container_network.name,
///     subnetwork=container_subnetwork.name,
///     ip_allocation_policy={
///         "cluster_ipv4_cidr_block": "/19",
///         "services_ipv4_cidr_block": "/22",
///     },
///     deletion_protection=True)
/// my_port = gcp.compute.InstanceGroupNamedPort("my_port",
///     group=my_cluster.node_pools[0].instance_group_urls[0],
///     zone="us-central1-a",
///     name="http",
///     port=8080)
/// my_ports = gcp.compute.InstanceGroupNamedPort("my_ports",
///     group=my_cluster.node_pools[0].instance_group_urls[0],
///     zone="us-central1-a",
///     name="https",
///     port=4443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerNetwork = new Gcp.Compute.Network("container_network", new()
///     {
///         Name = "container-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var containerSubnetwork = new Gcp.Compute.Subnetwork("container_subnetwork", new()
///     {
///         Name = "container-subnetwork",
///         Region = "us-central1",
///         Network = containerNetwork.Name,
///         IpCidrRange = "10.0.36.0/24",
///     });
///
///     var myCluster = new Gcp.Container.Cluster("my_cluster", new()
///     {
///         Name = "my-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         Network = containerNetwork.Name,
///         Subnetwork = containerSubnetwork.Name,
///         IpAllocationPolicy = new Gcp.Container.Inputs.ClusterIpAllocationPolicyArgs
///         {
///             ClusterIpv4CidrBlock = "/19",
///             ServicesIpv4CidrBlock = "/22",
///         },
///         DeletionProtection = true,
///     });
///
///     var myPort = new Gcp.Compute.InstanceGroupNamedPort("my_port", new()
///     {
///         Group = myCluster.NodePools.Apply(nodePools => nodePools[0].InstanceGroupUrls[0]),
///         Zone = "us-central1-a",
///         Name = "http",
///         Port = 8080,
///     });
///
///     var myPorts = new Gcp.Compute.InstanceGroupNamedPort("my_ports", new()
///     {
///         Group = myCluster.NodePools.Apply(nodePools => nodePools[0].InstanceGroupUrls[0]),
///         Zone = "us-central1-a",
///         Name = "https",
///         Port = 4443,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		containerNetwork, err := compute.NewNetwork(ctx, "container_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("container-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		containerSubnetwork, err := compute.NewSubnetwork(ctx, "container_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("container-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     containerNetwork.Name,
/// 			IpCidrRange: pulumi.String("10.0.36.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myCluster, err := container.NewCluster(ctx, "my_cluster", &container.ClusterArgs{
/// 			Name:             pulumi.String("my-cluster"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			Network:          containerNetwork.Name,
/// 			Subnetwork:       containerSubnetwork.Name,
/// 			IpAllocationPolicy: &container.ClusterIpAllocationPolicyArgs{
/// 				ClusterIpv4CidrBlock:  pulumi.String("/19"),
/// 				ServicesIpv4CidrBlock: pulumi.String("/22"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceGroupNamedPort(ctx, "my_port", &compute.InstanceGroupNamedPortArgs{
/// 			Group: pulumi.String(myCluster.NodePools.ApplyT(func(nodePools []container.ClusterNodePool) (*string, error) {
/// 				return &nodePools[0].InstanceGroupUrls[0], nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Zone: pulumi.String("us-central1-a"),
/// 			Name: pulumi.String("http"),
/// 			Port: pulumi.Int(8080),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceGroupNamedPort(ctx, "my_ports", &compute.InstanceGroupNamedPortArgs{
/// 			Group: pulumi.String(myCluster.NodePools.ApplyT(func(nodePools []container.ClusterNodePool) (*string, error) {
/// 				return &nodePools[0].InstanceGroupUrls[0], nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Zone: pulumi.String("us-central1-a"),
/// 			Name: pulumi.String("https"),
/// 			Port: pulumi.Int(4443),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterIpAllocationPolicyArgs;
/// import com.pulumi.gcp.compute.InstanceGroupNamedPort;
/// import com.pulumi.gcp.compute.InstanceGroupNamedPortArgs;
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
///         var containerNetwork = new Network("containerNetwork", NetworkArgs.builder()
///             .name("container-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var containerSubnetwork = new Subnetwork("containerSubnetwork", SubnetworkArgs.builder()
///             .name("container-subnetwork")
///             .region("us-central1")
///             .network(containerNetwork.name())
///             .ipCidrRange("10.0.36.0/24")
///             .build());
///
///         var myCluster = new Cluster("myCluster", ClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .network(containerNetwork.name())
///             .subnetwork(containerSubnetwork.name())
///             .ipAllocationPolicy(ClusterIpAllocationPolicyArgs.builder()
///                 .clusterIpv4CidrBlock("/19")
///                 .servicesIpv4CidrBlock("/22")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var myPort = new InstanceGroupNamedPort("myPort", InstanceGroupNamedPortArgs.builder()
///             .group(myCluster.nodePools().applyValue(_nodePools -> _nodePools[0].instanceGroupUrls()[0]))
///             .zone("us-central1-a")
///             .name("http")
///             .port(8080)
///             .build());
///
///         var myPorts = new InstanceGroupNamedPort("myPorts", InstanceGroupNamedPortArgs.builder()
///             .group(myCluster.nodePools().applyValue(_nodePools -> _nodePools[0].instanceGroupUrls()[0]))
///             .zone("us-central1-a")
///             .name("https")
///             .port(4443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myPort:
///     type: gcp:compute:InstanceGroupNamedPort
///     name: my_port
///     properties:
///       group: ${myCluster.nodePools[0].instanceGroupUrls[0]}
///       zone: us-central1-a
///       name: http
///       port: 8080
///   myPorts:
///     type: gcp:compute:InstanceGroupNamedPort
///     name: my_ports
///     properties:
///       group: ${myCluster.nodePools[0].instanceGroupUrls[0]}
///       zone: us-central1-a
///       name: https
///       port: 4443
///   containerNetwork:
///     type: gcp:compute:Network
///     name: container_network
///     properties:
///       name: container-network
///       autoCreateSubnetworks: false
///   containerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: container_subnetwork
///     properties:
///       name: container-subnetwork
///       region: us-central1
///       network: ${containerNetwork.name}
///       ipCidrRange: 10.0.36.0/24
///   myCluster:
///     type: gcp:container:Cluster
///     name: my_cluster
///     properties:
///       name: my-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       network: ${containerNetwork.name}
///       subnetwork: ${containerSubnetwork.name}
///       ipAllocationPolicy:
///         clusterIpv4CidrBlock: /19
///         servicesIpv4CidrBlock: /22
///       deletionProtection: true
/// ```
///
///
/// ## Import
///
/// InstanceGroupNamedPort can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroups/{{group}}/{{port}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{group}}/{{port}}/{{name}}`
///
/// * `{{zone}}/{{group}}/{{port}}/{{name}}`
///
/// * `{{group}}/{{port}}/{{name}}`
///
/// When using the `pulumi import` command, InstanceGroupNamedPort can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default projects/{{project}}/zones/{{zone}}/instanceGroups/{{group}}/{{port}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default {{project}}/{{zone}}/{{group}}/{{port}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default {{zone}}/{{group}}/{{port}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default {{group}}/{{port}}/{{name}}
/// ```
class InstanceGroupNamedPortCompute extends pulumi.CustomResource {
  /// The name of the instance group.
  late final pulumi.Output<String> group;

  /// The name for this named port. The name must be 1-63 characters
  /// long, and comply with RFC1035.
  late final pulumi.Output<String> name;

  /// The port number, which can be a value between 1 and 65535.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The zone of the instance group.
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceGroupNamedPortCompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGroupNamedPortCompute]. {@macro pulumi_compute_instance_group_named_port_instance_group_named_port_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGroupNamedPortCompute(
    String name, {
    InstanceGroupNamedPortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
