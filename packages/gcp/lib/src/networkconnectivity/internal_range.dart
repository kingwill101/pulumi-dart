import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_range_allocation_options.dart';
import 'internal_range_args.dart';
import 'internal_range_migration.dart';

/// The internal range resource for IPAM operations within a VPC network. Used to represent a private address range along with behavioral characterstics of that range (its usage and peering behavior). Networking resources can link to this range if they are created as belonging to it.
///
///
/// To get more information about InternalRange, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.internalRanges)
/// * How-to Guides
/// * [Use internal ranges](https://cloud.google.com/vpc/docs/create-use-internal-ranges)
///
/// ## Example Usage
///
/// ### Network Connectivity Internal Ranges Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "basic",
///     description: "Test internal range",
///     network: defaultNetwork.selfLink,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     ipCidrRange: "10.0.0.0/24",
///     labels: {
///         "label-a": "b",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="basic",
///     description="Test internal range",
///     network=default_network.self_link,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     ip_cidr_range="10.0.0.0/24",
///     labels={
///         "label-a": "b",
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "basic",
///         Description = "Test internal range",
///         Network = defaultNetwork.SelfLink,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         IpCidrRange = "10.0.0.0/24",
///         Labels =
///         {
///             { "label-a", "b" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("basic"),
/// 			Description: pulumi.String("Test internal range"),
/// 			Network:     defaultNetwork.SelfLink,
/// 			Usage:       pulumi.String("FOR_VPC"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Labels: pulumi.StringMap{
/// 				"label-a": pulumi.String("b"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("basic")
///             .description("Test internal range")
///             .network(defaultNetwork.selfLink())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .ipCidrRange("10.0.0.0/24")
///             .labels(Map.of("label-a", "b"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: basic
///       description: Test internal range
///       network: ${defaultNetwork.selfLink}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       ipCidrRange: 10.0.0.0/24
///       labels:
///         label-a: b
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
/// ```
///
/// ### Network Connectivity Internal Ranges Automatic Reservation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "automatic-reservation",
///     network: defaultNetwork.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["192.16.0.0/16"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="automatic-reservation",
///     network=default_network.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["192.16.0.0/16"])
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
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "automatic-reservation",
///         Network = defaultNetwork.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "192.16.0.0/16",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("automatic-reservation"),
/// 			Network:      defaultNetwork.ID(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("192.16.0.0/16"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("automatic-reservation")
///             .network(defaultNetwork.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("192.16.0.0/16")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: automatic-reservation
///       network: ${defaultNetwork.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 192.16.0.0/16
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
/// ```
///
/// ### Network Connectivity Internal Ranges External Ranges
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "external-ranges",
///     network: defaultNetwork.id,
///     usage: "EXTERNAL_TO_VPC",
///     peering: "FOR_SELF",
///     ipCidrRange: "172.16.0.0/24",
///     labels: {
///         "external-reserved-range": "on-premises",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="external-ranges",
///     network=default_network.id,
///     usage="EXTERNAL_TO_VPC",
///     peering="FOR_SELF",
///     ip_cidr_range="172.16.0.0/24",
///     labels={
///         "external-reserved-range": "on-premises",
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "external-ranges",
///         Network = defaultNetwork.Id,
///         Usage = "EXTERNAL_TO_VPC",
///         Peering = "FOR_SELF",
///         IpCidrRange = "172.16.0.0/24",
///         Labels =
///         {
///             { "external-reserved-range", "on-premises" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("external-ranges"),
/// 			Network:     defaultNetwork.ID(),
/// 			Usage:       pulumi.String("EXTERNAL_TO_VPC"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("172.16.0.0/24"),
/// 			Labels: pulumi.StringMap{
/// 				"external-reserved-range": pulumi.String("on-premises"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("external-ranges")
///             .network(defaultNetwork.id())
///             .usage("EXTERNAL_TO_VPC")
///             .peering("FOR_SELF")
///             .ipCidrRange("172.16.0.0/24")
///             .labels(Map.of("external-reserved-range", "on-premises"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: external-ranges
///       network: ${defaultNetwork.id}
///       usage: EXTERNAL_TO_VPC
///       peering: FOR_SELF
///       ipCidrRange: 172.16.0.0/24
///       labels:
///         external-reserved-range: on-premises
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
/// ```
///
/// ### Network Connectivity Internal Ranges Reserve With Overlap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "overlapping-subnet",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: defaultNetwork.id,
/// });
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "overlap-range",
///     description: "Test internal range",
///     network: defaultNetwork.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     ipCidrRange: "10.0.0.0/30",
///     overlaps: ["OVERLAP_EXISTING_SUBNET_RANGE"],
/// }, {
///     dependsOn: [defaultSubnetwork],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="overlapping-subnet",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default_network.id)
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="overlap-range",
///     description="Test internal range",
///     network=default_network.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     ip_cidr_range="10.0.0.0/30",
///     overlaps=["OVERLAP_EXISTING_SUBNET_RANGE"],
///     opts = pulumi.ResourceOptions(depends_on=[default_subnetwork]))
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
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "overlapping-subnet",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = defaultNetwork.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "overlap-range",
///         Description = "Test internal range",
///         Network = defaultNetwork.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         IpCidrRange = "10.0.0.0/30",
///         Overlaps = new[]
///         {
///             "OVERLAP_EXISTING_SUBNET_RANGE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultSubnetwork,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("overlapping-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("overlap-range"),
/// 			Description: pulumi.String("Test internal range"),
/// 			Network:     defaultNetwork.ID(),
/// 			Usage:       pulumi.String("FOR_VPC"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/30"),
/// 			Overlaps: pulumi.StringArray{
/// 				pulumi.String("OVERLAP_EXISTING_SUBNET_RANGE"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultSubnetwork,
/// 		}))
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
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("overlapping-subnet")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(defaultNetwork.id())
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("overlap-range")
///             .description("Test internal range")
///             .network(defaultNetwork.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .ipCidrRange("10.0.0.0/30")
///             .overlaps("OVERLAP_EXISTING_SUBNET_RANGE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultSubnetwork)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: overlap-range
///       description: Test internal range
///       network: ${defaultNetwork.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       ipCidrRange: 10.0.0.0/30
///       overlaps:
///         - OVERLAP_EXISTING_SUBNET_RANGE
///     options:
///       dependsOn:
///         - ${defaultSubnetwork}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: overlapping-subnet
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${defaultNetwork.id}
/// ```
///
/// ### Network Connectivity Internal Ranges Migration
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const source = new gcp.compute.Subnetwork("source", {
///     name: "source-subnet",
///     ipCidrRange: "10.1.0.0/16",
///     region: "us-central1",
///     network: defaultNetwork.name,
/// });
/// const targetProject = gcp.organizations.getProject({});
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "migration",
///     description: "Test internal range",
///     network: defaultNetwork.selfLink,
///     usage: "FOR_MIGRATION",
///     peering: "FOR_SELF",
///     ipCidrRange: "10.1.0.0/16",
///     migration: {
///         source: source.selfLink,
///         target: targetProject.then(targetProject => `projects/${targetProject.projectId}/regions/us-central1/subnetworks/target-subnet`),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// source = gcp.compute.Subnetwork("source",
///     name="source-subnet",
///     ip_cidr_range="10.1.0.0/16",
///     region="us-central1",
///     network=default_network.name)
/// target_project = gcp.organizations.get_project()
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="migration",
///     description="Test internal range",
///     network=default_network.self_link,
///     usage="FOR_MIGRATION",
///     peering="FOR_SELF",
///     ip_cidr_range="10.1.0.0/16",
///     migration={
///         "source": source.self_link,
///         "target": f"projects/{target_project.project_id}/regions/us-central1/subnetworks/target-subnet",
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var source = new Gcp.Compute.Subnetwork("source", new()
///     {
///         Name = "source-subnet",
///         IpCidrRange = "10.1.0.0/16",
///         Region = "us-central1",
///         Network = defaultNetwork.Name,
///     });
///
///     var targetProject = Gcp.Organizations.GetProject.Invoke();
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "migration",
///         Description = "Test internal range",
///         Network = defaultNetwork.SelfLink,
///         Usage = "FOR_MIGRATION",
///         Peering = "FOR_SELF",
///         IpCidrRange = "10.1.0.0/16",
///         Migration = new Gcp.NetworkConnectivity.Inputs.InternalRangeMigrationArgs
///         {
///             Source = source.SelfLink,
///             Target = $"projects/{targetProject.Apply(getProjectResult => getProjectResult.ProjectId)}/regions/us-central1/subnetworks/target-subnet",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := compute.NewSubnetwork(ctx, "source", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("source-subnet"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("migration"),
/// 			Description: pulumi.String("Test internal range"),
/// 			Network:     defaultNetwork.SelfLink,
/// 			Usage:       pulumi.String("FOR_MIGRATION"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 			Migration: &networkconnectivity.InternalRangeMigrationArgs{
/// 				Source: source.SelfLink,
/// 				Target: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/target-subnet", targetProject.ProjectId),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.InternalRangeMigrationArgs;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var source = new Subnetwork("source", SubnetworkArgs.builder()
///             .name("source-subnet")
///             .ipCidrRange("10.1.0.0/16")
///             .region("us-central1")
///             .network(defaultNetwork.name())
///             .build());
///
///         final var targetProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("migration")
///             .description("Test internal range")
///             .network(defaultNetwork.selfLink())
///             .usage("FOR_MIGRATION")
///             .peering("FOR_SELF")
///             .ipCidrRange("10.1.0.0/16")
///             .migration(InternalRangeMigrationArgs.builder()
///                 .source(source.selfLink())
///                 .target(String.format("projects/%s/regions/us-central1/subnetworks/target-subnet", targetProject.projectId()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: migration
///       description: Test internal range
///       network: ${defaultNetwork.selfLink}
///       usage: FOR_MIGRATION
///       peering: FOR_SELF
///       ipCidrRange: 10.1.0.0/16
///       migration:
///         source: ${source.selfLink}
///         target: projects/${targetProject.projectId}/regions/us-central1/subnetworks/target-subnet
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
///   source:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: source-subnet
///       ipCidrRange: 10.1.0.0/16
///       region: us-central1
///       network: ${defaultNetwork.name}
/// variables:
///   targetProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Connectivity Internal Ranges Allocation Algoritms
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "allocation-algorithms",
///     network: defaultNetwork.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["192.16.0.0/16"],
///     allocationOptions: {
///         allocationStrategy: "FIRST_SMALLEST_FITTING",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="allocation-algorithms",
///     network=default_network.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["192.16.0.0/16"],
///     allocation_options={
///         "allocation_strategy": "FIRST_SMALLEST_FITTING",
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "allocation-algorithms",
///         Network = defaultNetwork.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "192.16.0.0/16",
///         },
///         AllocationOptions = new Gcp.NetworkConnectivity.Inputs.InternalRangeAllocationOptionsArgs
///         {
///             AllocationStrategy = "FIRST_SMALLEST_FITTING",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("allocation-algorithms"),
/// 			Network:      defaultNetwork.ID(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("192.16.0.0/16"),
/// 			},
/// 			AllocationOptions: &networkconnectivity.InternalRangeAllocationOptionsArgs{
/// 				AllocationStrategy: pulumi.String("FIRST_SMALLEST_FITTING"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.InternalRangeAllocationOptionsArgs;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("allocation-algorithms")
///             .network(defaultNetwork.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("192.16.0.0/16")
///             .allocationOptions(InternalRangeAllocationOptionsArgs.builder()
///                 .allocationStrategy("FIRST_SMALLEST_FITTING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: allocation-algorithms
///       network: ${defaultNetwork.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 192.16.0.0/16
///       allocationOptions:
///         allocationStrategy: FIRST_SMALLEST_FITTING
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
/// ```
///
/// ### Network Connectivity Internal Ranges Allocation Algoritms Random First N
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "internal-ranges",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networkconnectivity.InternalRange("default", {
///     name: "allocation-algorithms-random-first-n",
///     network: defaultNetwork.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["192.16.0.0/16"],
///     allocationOptions: {
///         allocationStrategy: "RANDOM_FIRST_N_AVAILABLE",
///         firstAvailableRangesLookupSize: 20,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="internal-ranges",
///     auto_create_subnetworks=False)
/// default = gcp.networkconnectivity.InternalRange("default",
///     name="allocation-algorithms-random-first-n",
///     network=default_network.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["192.16.0.0/16"],
///     allocation_options={
///         "allocation_strategy": "RANDOM_FIRST_N_AVAILABLE",
///         "first_available_ranges_lookup_size": 20,
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "internal-ranges",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.InternalRange("default", new()
///     {
///         Name = "allocation-algorithms-random-first-n",
///         Network = defaultNetwork.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "192.16.0.0/16",
///         },
///         AllocationOptions = new Gcp.NetworkConnectivity.Inputs.InternalRangeAllocationOptionsArgs
///         {
///             AllocationStrategy = "RANDOM_FIRST_N_AVAILABLE",
///             FirstAvailableRangesLookupSize = 20,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewInternalRange(ctx, "default", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("allocation-algorithms-random-first-n"),
/// 			Network:      defaultNetwork.ID(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("192.16.0.0/16"),
/// 			},
/// 			AllocationOptions: &networkconnectivity.InternalRangeAllocationOptionsArgs{
/// 				AllocationStrategy:             pulumi.String("RANDOM_FIRST_N_AVAILABLE"),
/// 				FirstAvailableRangesLookupSize: pulumi.Int(20),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.InternalRangeAllocationOptionsArgs;
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
///             .name("internal-ranges")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new InternalRange("default", InternalRangeArgs.builder()
///             .name("allocation-algorithms-random-first-n")
///             .network(defaultNetwork.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("192.16.0.0/16")
///             .allocationOptions(InternalRangeAllocationOptionsArgs.builder()
///                 .allocationStrategy("RANDOM_FIRST_N_AVAILABLE")
///                 .firstAvailableRangesLookupSize(20)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: allocation-algorithms-random-first-n
///       network: ${defaultNetwork.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 192.16.0.0/16
///       allocationOptions:
///         allocationStrategy: RANDOM_FIRST_N_AVAILABLE
///         firstAvailableRangesLookupSize: 20
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: internal-ranges
///       autoCreateSubnetworks: false
/// ```
///
///
/// ## Import
///
/// InternalRange can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/internalRanges/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InternalRange can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/internalRange:InternalRange default projects/{{project}}/locations/global/internalRanges/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/internalRange:InternalRange default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/internalRange:InternalRange default {{name}}
/// ```
class InternalRange extends pulumi.CustomResource {
  /// Options for automatically allocating a free range with a size given by prefixLength.
  /// Structure is documented below.
  late final pulumi.Output<InternalRangeAllocationOptions?> allocationOptions;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. List of IP CIDR ranges to be excluded. Resulting reserved Internal Range will not overlap with any CIDR blocks mentioned in this list.
  /// Only IPv4 CIDR ranges are supported.
  late final pulumi.Output<List<String>?> excludeCidrRanges;
  /// Immutable ranges cannot have their fields modified, except for labels and description.
  late final pulumi.Output<bool?> immutable;
  /// The IP range that this internal range defines.
  /// NOTE: IPv6 ranges are limited to usage=EXTERNAL_TO_VPC and peering=FOR_SELF
  /// NOTE: For IPv6 Ranges this field is compulsory, i.e. the address range must be specified explicitly.
  late final pulumi.Output<String> ipCidrRange;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Specification for migration with source and target resource names.
  /// Structure is documented below.
  late final pulumi.Output<InternalRangeMigration?> migration;
  /// The name of the policy based route.
  late final pulumi.Output<String> name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  late final pulumi.Output<String> network;
  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  /// Each value may be one of: `OVERLAP_ROUTE_RANGE`, `OVERLAP_EXISTING_SUBNET_RANGE`.
  late final pulumi.Output<List<String>?> overlaps;
  /// The type of peering set for this internal range.
  /// Possible values are: `FOR_SELF`, `FOR_PEER`, `NOT_SHARED`.
  late final pulumi.Output<String> peering;
  /// An alternate to ipCidrRange. Can be set when trying to create a reservation that automatically finds a free range of the given size.
  /// If both ipCidrRange and prefixLength are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// NOTE: For IPv6 this field only works if ip_cidr_range is set as well, and both fields must match. In other words, with IPv6 this field only works as
  /// a redundant parameter.
  late final pulumi.Output<int?> prefixLength;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range.
  /// If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  late final pulumi.Output<List<String>?> targetCidrRanges;
  /// The type of usage set for this InternalRange.
  /// Possible values are: `FOR_VPC`, `EXTERNAL_TO_VPC`, `FOR_MIGRATION`.
  late final pulumi.Output<String> usage;
  /// Output only. The list of resources that refer to this internal range.
  /// Resources that use the internal range for their range allocation are referred to as users of the range.
  /// Other resources mark themselves as users while doing so by creating a reference to this internal range. Having a user, based on this reference, prevents deletion of the internal range referred to. Can be empty.
  late final pulumi.Output<List<String>> users;

  /// Creates a new [InternalRange].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternalRange]. {@macro pulumi_networkconnectivity_internal_range_internal_range_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternalRange(
    String name, {
    InternalRangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/internalRange:InternalRange',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationOptions = registerOutput<InternalRangeAllocationOptions?>('allocationOptions');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.excludeCidrRanges = registerOutput<List<String>?>('excludeCidrRanges');
    this.immutable = registerOutput<bool?>('immutable');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.migration = registerOutput<InternalRangeMigration?>('migration');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.overlaps = registerOutput<List<String>?>('overlaps');
    this.peering = registerOutput<String>('peering');
    this.prefixLength = registerOutput<int?>('prefixLength');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.targetCidrRanges = registerOutput<List<String>?>('targetCidrRanges');
    this.usage = registerOutput<String>('usage');
    this.users = registerOutput<List<String>>('users');
  }
}
