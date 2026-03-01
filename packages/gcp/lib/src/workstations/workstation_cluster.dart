import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_cluster_args.dart';
import 'workstation_cluster_condition.dart';
import 'workstation_cluster_domain_config.dart';
import 'workstation_cluster_private_cluster_config.dart';

/// A grouping of workstation configurations and the associated workstations in that region.
///
/// To get more information about WorkstationCluster, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters/create)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              defaultNetwork.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Private
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster-private",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster-private",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster-private",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     privateClusterConfig: {
///         enablePrivateEndpoint: true,
///     },
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster-private",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster-private",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster-private",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     private_cluster_config={
///         "enable_private_endpoint": True,
///     },
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster-private",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster-private",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster-private",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         PrivateClusterConfig = new Gcp.Workstations.Inputs.WorkstationClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateEndpoint = true,
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster-private"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster-private"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster-private"),
/// 			Network:              defaultNetwork.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-central1"),
/// 			PrivateClusterConfig: &workstations.WorkstationClusterPrivateClusterConfigArgs{
/// 				EnablePrivateEndpoint: pulumi.Bool(true),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("workstation-cluster-private")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster-private")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster-private")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .privateClusterConfig(WorkstationClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateEndpoint(true)
///                 .build())
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster-private
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       privateClusterConfig:
///         enablePrivateEndpoint: true
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster-private
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster-private
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Custom Domain
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster-custom-domain",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster-custom-domain",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster-custom-domain",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     privateClusterConfig: {
///         enablePrivateEndpoint: true,
///     },
///     domainConfig: {
///         domain: "workstations.example.com",
///     },
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster-custom-domain",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster-custom-domain",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster-custom-domain",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     private_cluster_config={
///         "enable_private_endpoint": True,
///     },
///     domain_config={
///         "domain": "workstations.example.com",
///     },
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster-custom-domain",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster-custom-domain",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster-custom-domain",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         PrivateClusterConfig = new Gcp.Workstations.Inputs.WorkstationClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateEndpoint = true,
///         },
///         DomainConfig = new Gcp.Workstations.Inputs.WorkstationClusterDomainConfigArgs
///         {
///             Domain = "workstations.example.com",
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster-custom-domain"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster-custom-domain"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster-custom-domain"),
/// 			Network:              defaultNetwork.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-central1"),
/// 			PrivateClusterConfig: &workstations.WorkstationClusterPrivateClusterConfigArgs{
/// 				EnablePrivateEndpoint: pulumi.Bool(true),
/// 			},
/// 			DomainConfig: &workstations.WorkstationClusterDomainConfigArgs{
/// 				Domain: pulumi.String("workstations.example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationClusterDomainConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("workstation-cluster-custom-domain")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster-custom-domain")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster-custom-domain")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .privateClusterConfig(WorkstationClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateEndpoint(true)
///                 .build())
///             .domainConfig(WorkstationClusterDomainConfigArgs.builder()
///                 .domain("workstations.example.com")
///                 .build())
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster-custom-domain
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       privateClusterConfig:
///         enablePrivateEndpoint: true
///       domainConfig:
///         domain: workstations.example.com
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster-custom-domain
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster-custom-domain
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Workstation Cluster Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const tagKey = new gcp.tags.TagKey("tag_key", {
///     parent: project.then(project => `projects/${project.number}`),
///     shortName: "keyname",
/// });
/// const tagValue = new gcp.tags.TagValue("tag_value", {
///     parent: pulumi.interpolate`tagKeys/${tagKey.name}`,
///     shortName: "valuename",
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "workstation-cluster-tags",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster-tags",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const _default = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster-tags",
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     tags: pulumi.all([project, tagKey.shortName, tagValue.shortName]).apply(([project, tagKeyShortName, tagValueShortName]) => {
///         [`${project.projectId}/${tagKeyShortName}`]: tagValueShortName,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// tag_key = gcp.tags.TagKey("tag_key",
///     parent=f"projects/{project.number}",
///     short_name="keyname")
/// tag_value = gcp.tags.TagValue("tag_value",
///     parent=tag_key.name.apply(lambda name: f"tagKeys/{name}"),
///     short_name="valuename")
/// default_network = gcp.compute.Network("default",
///     name="workstation-cluster-tags",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster-tags",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.name)
/// default = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster-tags",
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     tags=pulumi.Output.all(
///         tagKeyShort_name=tag_key.short_name,
///         tagValueShort_name=tag_value.short_name
/// ).apply(lambda resolved_outputs: {
///         f"{project.project_id}/{resolved_outputs['tagKeyShort_name']}": resolved_outputs['tagValueShort_name'],
///     })
/// )
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
///     var tagKey = new Gcp.Tags.TagKey("tag_key", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         ShortName = "keyname",
///     });
///
///     var tagValue = new Gcp.Tags.TagValue("tag_value", new()
///     {
///         Parent = tagKey.Name.Apply(name => $"tagKeys/{name}"),
///         ShortName = "valuename",
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster-tags",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster-tags",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var @default = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster-tags",
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Tags = Output.Tuple(project, tagKey.ShortName, tagValue.ShortName).Apply(values =>
///         {
///             var project = values.Item1;
///             var tagKeyShortName = values.Item2;
///             var tagValueShortName = values.Item3;
///             return
///             {
///                 { $"{project.Apply(getProjectResult => getProjectResult.ProjectId)}/{tagKeyShortName}", tagValueShortName },
///             };
///         }),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// Parent: pulumi.Sprintf("projects/%v", project.Number),
/// ShortName: pulumi.String("keyname"),
/// })
/// if err != nil {
/// return err
/// }
/// tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// Parent: tagKey.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("tagKeys/%v", name), nil
/// }).(pulumi.StringOutput),
/// ShortName: pulumi.String("valuename"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("workstation-cluster-tags"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name: pulumi.String("workstation-cluster-tags"),
/// IpCidrRange: pulumi.String("10.0.0.0/24"),
/// Region: pulumi.String("us-central1"),
/// Network: defaultNetwork.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// WorkstationClusterId: pulumi.String("workstation-cluster-tags"),
/// Network: defaultNetwork.ID(),
/// Subnetwork: defaultSubnetwork.ID(),
/// Location: pulumi.String("us-central1"),
/// Tags: pulumi.All(tagKey.ShortName,tagValue.ShortName).ApplyT(func(_args []interface{}) (map[string]string, error) {
/// tagKeyShortName := _args[0].(string)
/// tagValueShortName := _args[1].(string)
/// return map[string]string{
/// fmt.Sprintf("%v/%v", project.ProjectId, tagKeyShortName): tagValueShortName,
/// }, nil
/// }).(pulumi.Map[string]stringOutput),
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
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
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
///         var tagKey = new TagKey("tagKey", TagKeyArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .shortName("keyname")
///             .build());
///
///         var tagValue = new TagValue("tagValue", TagValueArgs.builder()
///             .parent(tagKey.name().applyValue(_name -> String.format("tagKeys/%s", _name)))
///             .shortName("valuename")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("workstation-cluster-tags")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster-tags")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         var default_ = new WorkstationCluster("default", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster-tags")
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .tags(Output.tuple(tagKey.shortName(), tagValue.shortName()).applyValue(values -> {
///                 var tagKeyShortName = values.t1;
///                 var tagValueShortName = values.t2;
///                 return Map.of(String.format("%s/%s", project.projectId(),tagKeyShortName), tagValueShortName);
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tagKey:
///     type: gcp:tags:TagKey
///     name: tag_key
///     properties:
///       parent: projects/${project.number}
///       shortName: keyname
///   tagValue:
///     type: gcp:tags:TagValue
///     name: tag_value
///     properties:
///       parent: tagKeys/${tagKey.name}
///       shortName: valuename
///   default:
///     type: gcp:workstations:WorkstationCluster
///     properties:
///       workstationClusterId: workstation-cluster-tags
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       tags:
///         ${project.projectId}/${tagKey.shortName}: ${tagValue.shortName}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: workstation-cluster-tags
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster-tags
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.name}
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
/// WorkstationCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}`
///
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}`
///
/// * `{{location}}/{{workstation_cluster_id}}`
///
/// When using the `pulumi import` command, WorkstationCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default {{project}}/{{location}}/{{workstation_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationCluster:WorkstationCluster default {{location}}/{{workstation_cluster_id}}
/// ```
class WorkstationCluster extends pulumi.CustomResource {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkstationClusterCondition>> conditions;
  /// The private IP address of the control plane for this workstation cluster.
  /// Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  late final pulumi.Output<String> controlPlaneIp;
  /// Time when this resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// Details can be found in the conditions field.
  late final pulumi.Output<bool> degraded;
  /// Human-readable name for this resource.
  late final pulumi.Output<String?> displayName;
  /// Configuration options for a custom domain.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationClusterDomainConfig?> domainConfig;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the workstation cluster should reside.
  late final pulumi.Output<String?> location;
  /// The name of the cluster resource.
  late final pulumi.Output<String> name;
  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  late final pulumi.Output<String> network;
  /// Configuration for private cluster.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationClusterPrivateClusterConfig?> privateClusterConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  late final pulumi.Output<String> subnetwork;
  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  late final pulumi.Output<Map<String, String>?> tags;
  /// The system-generated UID of the resource.
  late final pulumi.Output<String> uid;
  /// ID to use for the workstation cluster.
  late final pulumi.Output<String> workstationClusterId;

  /// Creates a new [WorkstationCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationCluster]. {@macro pulumi_workstations_workstation_cluster_workstation_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationCluster(
    String name, {
    WorkstationClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationCluster:WorkstationCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions = registerOutput<List<WorkstationClusterCondition>>('conditions');
    this.controlPlaneIp = registerOutput<String>('controlPlaneIp');
    this.createTime = registerOutput<String>('createTime');
    this.degraded = registerOutput<bool>('degraded');
    this.displayName = registerOutput<String?>('displayName');
    this.domainConfig = registerOutput<WorkstationClusterDomainConfig?>('domainConfig');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.privateClusterConfig = registerOutput<WorkstationClusterPrivateClusterConfig?>('privateClusterConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uid = registerOutput<String>('uid');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
  }
}
