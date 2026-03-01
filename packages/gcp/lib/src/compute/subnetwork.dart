import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_args.dart';
import 'subnetwork_log_config.dart';
import 'subnetwork_params.dart';
import 'subnetwork_secondary_ip_range.dart';

/// A VPC network is a virtual version of the traditional physical networks
/// that exist within and between physical data centers. A VPC network
/// provides connectivity for your Compute Engine virtual machine (VM)
/// instances, Container Engine containers, App Engine Flex services, and
/// other network-related resources.
///
/// Each GCP project contains one or more VPC networks. Each VPC network is a
/// global entity spanning all GCP regions. This global VPC network allows VM
/// instances and other resources to communicate with each other via internal,
/// private IP addresses.
///
/// Each VPC network is subdivided into subnets, and each subnet is contained
/// within a single region. You can have more than one subnet in a region for
/// a given VPC network. Each subnet has a contiguous private RFC1918 IP
/// space. You create instances, containers, and the like in these subnets.
/// When you create an instance, you must create it in a subnet, and the
/// instance draws its internal IP address from that subnet.
///
/// Virtual machine (VM) instances in a VPC network can communicate with
/// instances in all other subnets of the same VPC network, regardless of
/// region, using their RFC1918 private IP addresses. You can isolate portions
/// of the network, even entire subnets, using firewall rules.
///
///
/// To get more information about Subnetwork, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks)
/// * How-to Guides
/// * [Cloud Networking](https://cloud.google.com/vpc/docs/using-vpc)
/// * [Private Google Access](https://cloud.google.com/vpc/docs/configure-private-google-access)
///
/// ## Example Usage
///
/// ### Subnetwork Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "test-network",
///     autoCreateSubnetworks: false,
/// });
/// const network_with_private_secondary_ip_ranges = new gcp.compute.Subnetwork("network-with-private-secondary-ip-ranges", {
///     name: "test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: custom_test.id,
///     secondaryIpRanges: [{
///         rangeName: "tf-test-secondary-range-update1",
///         ipCidrRange: "192.168.10.0/24",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="test-network",
///     auto_create_subnetworks=False)
/// network_with_private_secondary_ip_ranges = gcp.compute.Subnetwork("network-with-private-secondary-ip-ranges",
///     name="test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=custom_test.id,
///     secondary_ip_ranges=[{
///         "range_name": "tf-test-secondary-range-update1",
///         "ip_cidr_range": "192.168.10.0/24",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_with_private_secondary_ip_ranges = new Gcp.Compute.Subnetwork("network-with-private-secondary-ip-ranges", new()
///     {
///         Name = "test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = custom_test.Id,
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "tf-test-secondary-range-update1",
///                 IpCidrRange = "192.168.10.0/24",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "network-with-private-secondary-ip-ranges", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     custom_test.ID(),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:   pulumi.String("tf-test-secondary-range-update1"),
/// 					IpCidrRange: pulumi.String("192.168.10.0/24"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_with_private_secondary_ip_ranges = new Subnetwork("network-with-private-secondary-ip-ranges", SubnetworkArgs.builder()
///             .name("test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(custom_test.id())
///             .secondaryIpRanges(SubnetworkSecondaryIpRangeArgs.builder()
///                 .rangeName("tf-test-secondary-range-update1")
///                 .ipCidrRange("192.168.10.0/24")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-with-private-secondary-ip-ranges:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${["custom-test"].id}
///       secondaryIpRanges:
///         - rangeName: tf-test-secondary-range-update1
///           ipCidrRange: 192.168.10.0/24
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Logging Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "log-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet_with_logging = new gcp.compute.Subnetwork("subnet-with-logging", {
///     name: "log-test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: custom_test.id,
///     logConfig: {
///         aggregationInterval: "INTERVAL_10_MIN",
///         flowSampling: 0.5,
///         metadata: "INCLUDE_ALL_METADATA",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="log-test-network",
///     auto_create_subnetworks=False)
/// subnet_with_logging = gcp.compute.Subnetwork("subnet-with-logging",
///     name="log-test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=custom_test.id,
///     log_config={
///         "aggregation_interval": "INTERVAL_10_MIN",
///         "flow_sampling": 0.5,
///         "metadata": "INCLUDE_ALL_METADATA",
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
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "log-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet_with_logging = new Gcp.Compute.Subnetwork("subnet-with-logging", new()
///     {
///         Name = "log-test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = custom_test.Id,
///         LogConfig = new Gcp.Compute.Inputs.SubnetworkLogConfigArgs
///         {
///             AggregationInterval = "INTERVAL_10_MIN",
///             FlowSampling = 0.5,
///             Metadata = "INCLUDE_ALL_METADATA",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("log-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnet-with-logging", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("log-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     custom_test.ID(),
/// 			LogConfig: &compute.SubnetworkLogConfigArgs{
/// 				AggregationInterval: pulumi.String("INTERVAL_10_MIN"),
/// 				FlowSampling:        pulumi.Float64(0.5),
/// 				Metadata:            pulumi.String("INCLUDE_ALL_METADATA"),
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
/// import com.pulumi.gcp.compute.inputs.SubnetworkLogConfigArgs;
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("log-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet_with_logging = new Subnetwork("subnet-with-logging", SubnetworkArgs.builder()
///             .name("log-test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(custom_test.id())
///             .logConfig(SubnetworkLogConfigArgs.builder()
///                 .aggregationInterval("INTERVAL_10_MIN")
///                 .flowSampling(0.5)
///                 .metadata("INCLUDE_ALL_METADATA")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnet-with-logging:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: log-test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${["custom-test"].id}
///       logConfig:
///         aggregationInterval: INTERVAL_10_MIN
///         flowSampling: 0.5
///         metadata: INCLUDE_ALL_METADATA
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: log-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Internal L7lb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "l7lb-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const network_for_l7lb = new gcp.compute.Subnetwork("network-for-l7lb", {
///     name: "l7lb-test-subnetwork",
///     ipCidrRange: "10.0.0.0/22",
///     region: "us-central1",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     role: "ACTIVE",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="l7lb-test-network",
///     auto_create_subnetworks=False)
/// network_for_l7lb = gcp.compute.Subnetwork("network-for-l7lb",
///     name="l7lb-test-subnetwork",
///     ip_cidr_range="10.0.0.0/22",
///     region="us-central1",
///     purpose="REGIONAL_MANAGED_PROXY",
///     role="ACTIVE",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "l7lb-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_for_l7lb = new Gcp.Compute.Subnetwork("network-for-l7lb", new()
///     {
///         Name = "l7lb-test-subnetwork",
///         IpCidrRange = "10.0.0.0/22",
///         Region = "us-central1",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///         Network = custom_test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("l7lb-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "network-for-l7lb", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("l7lb-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/22"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 			Network:     custom_test.ID(),
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("l7lb-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_for_l7lb = new Subnetwork("network-for-l7lb", SubnetworkArgs.builder()
///             .name("l7lb-test-subnetwork")
///             .ipCidrRange("10.0.0.0/22")
///             .region("us-central1")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-for-l7lb:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: l7lb-test-subnetwork
///       ipCidrRange: 10.0.0.0/22
///       region: us-central1
///       purpose: REGIONAL_MANAGED_PROXY
///       role: ACTIVE
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: l7lb-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "ipv6-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_ipv6 = new gcp.compute.Subnetwork("subnetwork-ipv6", {
///     name: "ipv6-test-subnetwork",
///     ipCidrRange: "10.0.0.0/22",
///     region: "us-west2",
///     stackType: "IPV4_IPV6",
///     ipv6AccessType: "EXTERNAL",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="ipv6-test-network",
///     auto_create_subnetworks=False)
/// subnetwork_ipv6 = gcp.compute.Subnetwork("subnetwork-ipv6",
///     name="ipv6-test-subnetwork",
///     ip_cidr_range="10.0.0.0/22",
///     region="us-west2",
///     stack_type="IPV4_IPV6",
///     ipv6_access_type="EXTERNAL",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "ipv6-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_ipv6 = new Gcp.Compute.Subnetwork("subnetwork-ipv6", new()
///     {
///         Name = "ipv6-test-subnetwork",
///         IpCidrRange = "10.0.0.0/22",
///         Region = "us-west2",
///         StackType = "IPV4_IPV6",
///         Ipv6AccessType = "EXTERNAL",
///         Network = custom_test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("ipv6-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-ipv6", &compute.SubnetworkArgs{
/// 			Name:           pulumi.String("ipv6-test-subnetwork"),
/// 			IpCidrRange:    pulumi.String("10.0.0.0/22"),
/// 			Region:         pulumi.String("us-west2"),
/// 			StackType:      pulumi.String("IPV4_IPV6"),
/// 			Ipv6AccessType: pulumi.String("EXTERNAL"),
/// 			Network:        custom_test.ID(),
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("ipv6-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_ipv6 = new Subnetwork("subnetwork-ipv6", SubnetworkArgs.builder()
///             .name("ipv6-test-subnetwork")
///             .ipCidrRange("10.0.0.0/22")
///             .region("us-west2")
///             .stackType("IPV4_IPV6")
///             .ipv6AccessType("EXTERNAL")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-ipv6:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: ipv6-test-subnetwork
///       ipCidrRange: 10.0.0.0/22
///       region: us-west2
///       stackType: IPV4_IPV6
///       ipv6AccessType: EXTERNAL
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: ipv6-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Internal Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "internal-ipv6-test-network",
///     autoCreateSubnetworks: false,
///     enableUlaInternalIpv6: true,
/// });
/// const subnetwork_internal_ipv6 = new gcp.compute.Subnetwork("subnetwork-internal-ipv6", {
///     name: "internal-ipv6-test-subnetwork",
///     ipCidrRange: "10.0.0.0/22",
///     region: "us-west2",
///     stackType: "IPV4_IPV6",
///     ipv6AccessType: "INTERNAL",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="internal-ipv6-test-network",
///     auto_create_subnetworks=False,
///     enable_ula_internal_ipv6=True)
/// subnetwork_internal_ipv6 = gcp.compute.Subnetwork("subnetwork-internal-ipv6",
///     name="internal-ipv6-test-subnetwork",
///     ip_cidr_range="10.0.0.0/22",
///     region="us-west2",
///     stack_type="IPV4_IPV6",
///     ipv6_access_type="INTERNAL",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "internal-ipv6-test-network",
///         AutoCreateSubnetworks = false,
///         EnableUlaInternalIpv6 = true,
///     });
///
///     var subnetwork_internal_ipv6 = new Gcp.Compute.Subnetwork("subnetwork-internal-ipv6", new()
///     {
///         Name = "internal-ipv6-test-subnetwork",
///         IpCidrRange = "10.0.0.0/22",
///         Region = "us-west2",
///         StackType = "IPV4_IPV6",
///         Ipv6AccessType = "INTERNAL",
///         Network = custom_test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ipv6-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 			EnableUlaInternalIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-internal-ipv6", &compute.SubnetworkArgs{
/// 			Name:           pulumi.String("internal-ipv6-test-subnetwork"),
/// 			IpCidrRange:    pulumi.String("10.0.0.0/22"),
/// 			Region:         pulumi.String("us-west2"),
/// 			StackType:      pulumi.String("IPV4_IPV6"),
/// 			Ipv6AccessType: pulumi.String("INTERNAL"),
/// 			Network:        custom_test.ID(),
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("internal-ipv6-test-network")
///             .autoCreateSubnetworks(false)
///             .enableUlaInternalIpv6(true)
///             .build());
///
///         var subnetwork_internal_ipv6 = new Subnetwork("subnetwork-internal-ipv6", SubnetworkArgs.builder()
///             .name("internal-ipv6-test-subnetwork")
///             .ipCidrRange("10.0.0.0/22")
///             .region("us-west2")
///             .stackType("IPV4_IPV6")
///             .ipv6AccessType("INTERNAL")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-internal-ipv6:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: internal-ipv6-test-subnetwork
///       ipCidrRange: 10.0.0.0/22
///       region: us-west2
///       stackType: IPV4_IPV6
///       ipv6AccessType: INTERNAL
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: internal-ipv6-test-network
///       autoCreateSubnetworks: false
///       enableUlaInternalIpv6: true
/// ```
///
/// ### Subnetwork Purpose Private Nat
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "subnet-purpose-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_purpose_private_nat = new gcp.compute.Subnetwork("subnetwork-purpose-private-nat", {
///     name: "subnet-purpose-test-subnetwork",
///     region: "us-west2",
///     ipCidrRange: "192.168.1.0/24",
///     purpose: "PRIVATE_NAT",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="subnet-purpose-test-network",
///     auto_create_subnetworks=False)
/// subnetwork_purpose_private_nat = gcp.compute.Subnetwork("subnetwork-purpose-private-nat",
///     name="subnet-purpose-test-subnetwork",
///     region="us-west2",
///     ip_cidr_range="192.168.1.0/24",
///     purpose="PRIVATE_NAT",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "subnet-purpose-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_purpose_private_nat = new Gcp.Compute.Subnetwork("subnetwork-purpose-private-nat", new()
///     {
///         Name = "subnet-purpose-test-subnetwork",
///         Region = "us-west2",
///         IpCidrRange = "192.168.1.0/24",
///         Purpose = "PRIVATE_NAT",
///         Network = custom_test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("subnet-purpose-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-purpose-private-nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnet-purpose-test-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			IpCidrRange: pulumi.String("192.168.1.0/24"),
/// 			Purpose:     pulumi.String("PRIVATE_NAT"),
/// 			Network:     custom_test.ID(),
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("subnet-purpose-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_purpose_private_nat = new Subnetwork("subnetwork-purpose-private-nat", SubnetworkArgs.builder()
///             .name("subnet-purpose-test-subnetwork")
///             .region("us-west2")
///             .ipCidrRange("192.168.1.0/24")
///             .purpose("PRIVATE_NAT")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-purpose-private-nat:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnet-purpose-test-subnetwork
///       region: us-west2
///       ipCidrRange: 192.168.1.0/24
///       purpose: PRIVATE_NAT
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: subnet-purpose-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Resolve Subnet Mask
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "subnet-resolve-subnet-mask-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_resolve_subnet_mask = new gcp.compute.Subnetwork("subnetwork-resolve-subnet-mask", {
///     name: "subnet-resolve-subnet-mask-test-subnetwork",
///     region: "us-west2",
///     ipCidrRange: "10.10.0.0/24",
///     purpose: "PRIVATE",
///     resolveSubnetMask: "ARP_PRIMARY_RANGE",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="subnet-resolve-subnet-mask-test-network",
///     auto_create_subnetworks=False)
/// subnetwork_resolve_subnet_mask = gcp.compute.Subnetwork("subnetwork-resolve-subnet-mask",
///     name="subnet-resolve-subnet-mask-test-subnetwork",
///     region="us-west2",
///     ip_cidr_range="10.10.0.0/24",
///     purpose="PRIVATE",
///     resolve_subnet_mask="ARP_PRIMARY_RANGE",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "subnet-resolve-subnet-mask-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_resolve_subnet_mask = new Gcp.Compute.Subnetwork("subnetwork-resolve-subnet-mask", new()
///     {
///         Name = "subnet-resolve-subnet-mask-test-subnetwork",
///         Region = "us-west2",
///         IpCidrRange = "10.10.0.0/24",
///         Purpose = "PRIVATE",
///         ResolveSubnetMask = "ARP_PRIMARY_RANGE",
///         Network = custom_test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("subnet-resolve-subnet-mask-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-resolve-subnet-mask", &compute.SubnetworkArgs{
/// 			Name:              pulumi.String("subnet-resolve-subnet-mask-test-subnetwork"),
/// 			Region:            pulumi.String("us-west2"),
/// 			IpCidrRange:       pulumi.String("10.10.0.0/24"),
/// 			Purpose:           pulumi.String("PRIVATE"),
/// 			ResolveSubnetMask: pulumi.String("ARP_PRIMARY_RANGE"),
/// 			Network:           custom_test.ID(),
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("subnet-resolve-subnet-mask-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_resolve_subnet_mask = new Subnetwork("subnetwork-resolve-subnet-mask", SubnetworkArgs.builder()
///             .name("subnet-resolve-subnet-mask-test-subnetwork")
///             .region("us-west2")
///             .ipCidrRange("10.10.0.0/24")
///             .purpose("PRIVATE")
///             .resolveSubnetMask("ARP_PRIMARY_RANGE")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-resolve-subnet-mask:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnet-resolve-subnet-mask-test-subnetwork
///       region: us-west2
///       ipCidrRange: 10.10.0.0/24
///       purpose: PRIVATE
///       resolveSubnetMask: ARP_PRIMARY_RANGE
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: subnet-resolve-subnet-mask-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Cidr Overlap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net_cidr_overlap = new gcp.compute.Network("net-cidr-overlap", {
///     name: "net-cidr-overlap",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_cidr_overlap = new gcp.compute.Subnetwork("subnetwork-cidr-overlap", {
///     name: "subnet-cidr-overlap",
///     region: "us-west2",
///     ipCidrRange: "192.168.1.0/24",
///     allowSubnetCidrRoutesOverlap: true,
///     network: net_cidr_overlap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net_cidr_overlap = gcp.compute.Network("net-cidr-overlap",
///     name="net-cidr-overlap",
///     auto_create_subnetworks=False)
/// subnetwork_cidr_overlap = gcp.compute.Subnetwork("subnetwork-cidr-overlap",
///     name="subnet-cidr-overlap",
///     region="us-west2",
///     ip_cidr_range="192.168.1.0/24",
///     allow_subnet_cidr_routes_overlap=True,
///     network=net_cidr_overlap.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net_cidr_overlap = new Gcp.Compute.Network("net-cidr-overlap", new()
///     {
///         Name = "net-cidr-overlap",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_cidr_overlap = new Gcp.Compute.Subnetwork("subnetwork-cidr-overlap", new()
///     {
///         Name = "subnet-cidr-overlap",
///         Region = "us-west2",
///         IpCidrRange = "192.168.1.0/24",
///         AllowSubnetCidrRoutesOverlap = true,
///         Network = net_cidr_overlap.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net_cidr_overlap, err := compute.NewNetwork(ctx, "net-cidr-overlap", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-cidr-overlap"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-cidr-overlap", &compute.SubnetworkArgs{
/// 			Name:                         pulumi.String("subnet-cidr-overlap"),
/// 			Region:                       pulumi.String("us-west2"),
/// 			IpCidrRange:                  pulumi.String("192.168.1.0/24"),
/// 			AllowSubnetCidrRoutesOverlap: pulumi.Bool(true),
/// 			Network:                      net_cidr_overlap.ID(),
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
///         var net_cidr_overlap = new Network("net-cidr-overlap", NetworkArgs.builder()
///             .name("net-cidr-overlap")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_cidr_overlap = new Subnetwork("subnetwork-cidr-overlap", SubnetworkArgs.builder()
///             .name("subnet-cidr-overlap")
///             .region("us-west2")
///             .ipCidrRange("192.168.1.0/24")
///             .allowSubnetCidrRoutesOverlap(true)
///             .network(net_cidr_overlap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-cidr-overlap:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnet-cidr-overlap
///       region: us-west2
///       ipCidrRange: 192.168.1.0/24
///       allowSubnetCidrRoutesOverlap: true
///       network: ${["net-cidr-overlap"].id}
///   net-cidr-overlap:
///     type: gcp:compute:Network
///     properties:
///       name: net-cidr-overlap
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Reserved Internal Range
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network-reserved-internal-range",
///     autoCreateSubnetworks: false,
/// });
/// const reserved = new gcp.networkconnectivity.InternalRange("reserved", {
///     name: "reserved",
///     network: _default.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["10.0.0.0/8"],
/// });
/// const subnetwork_reserved_internal_range = new gcp.compute.Subnetwork("subnetwork-reserved-internal-range", {
///     name: "subnetwork-reserved-internal-range",
///     region: "us-central1",
///     network: _default.id,
///     reservedInternalRange: pulumi.interpolate`networkconnectivity.googleapis.com/${reserved.id}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network-reserved-internal-range",
///     auto_create_subnetworks=False)
/// reserved = gcp.networkconnectivity.InternalRange("reserved",
///     name="reserved",
///     network=default.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["10.0.0.0/8"])
/// subnetwork_reserved_internal_range = gcp.compute.Subnetwork("subnetwork-reserved-internal-range",
///     name="subnetwork-reserved-internal-range",
///     region="us-central1",
///     network=default.id,
///     reserved_internal_range=reserved.id.apply(lambda id: f"networkconnectivity.googleapis.com/{id}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network-reserved-internal-range",
///         AutoCreateSubnetworks = false,
///     });
///
///     var reserved = new Gcp.NetworkConnectivity.InternalRange("reserved", new()
///     {
///         Name = "reserved",
///         Network = @default.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var subnetwork_reserved_internal_range = new Gcp.Compute.Subnetwork("subnetwork-reserved-internal-range", new()
///     {
///         Name = "subnetwork-reserved-internal-range",
///         Region = "us-central1",
///         Network = @default.Id,
///         ReservedInternalRange = reserved.Id.Apply(id => $"networkconnectivity.googleapis.com/{id}"),
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-reserved-internal-range"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reserved, err := networkconnectivity.NewInternalRange(ctx, "reserved", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("reserved"),
/// 			Network:      _default.ID(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-reserved-internal-range", &compute.SubnetworkArgs{
/// 			Name:    pulumi.String("subnetwork-reserved-internal-range"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Network: _default.ID(),
/// 			ReservedInternalRange: reserved.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("networkconnectivity.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network-reserved-internal-range")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var reserved = new InternalRange("reserved", InternalRangeArgs.builder()
///             .name("reserved")
///             .network(default_.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("10.0.0.0/8")
///             .build());
///
///         var subnetwork_reserved_internal_range = new Subnetwork("subnetwork-reserved-internal-range", SubnetworkArgs.builder()
///             .name("subnetwork-reserved-internal-range")
///             .region("us-central1")
///             .network(default_.id())
///             .reservedInternalRange(reserved.id().applyValue(_id -> String.format("networkconnectivity.googleapis.com/%s", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-reserved-internal-range:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnetwork-reserved-internal-range
///       region: us-central1
///       network: ${default.id}
///       reservedInternalRange: networkconnectivity.googleapis.com/${reserved.id}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network-reserved-internal-range
///       autoCreateSubnetworks: false
///   reserved:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: reserved
///       network: ${default.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 10.0.0.0/8
/// ```
///
/// ### Subnetwork Reserved Secondary Range
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network-reserved-secondary-range",
///     autoCreateSubnetworks: false,
/// });
/// const reserved = new gcp.networkconnectivity.InternalRange("reserved", {
///     name: "reserved-primary",
///     network: _default.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["10.0.0.0/8"],
/// });
/// const reservedSecondary = new gcp.networkconnectivity.InternalRange("reserved_secondary", {
///     name: "reserved-secondary",
///     network: _default.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 16,
///     targetCidrRanges: ["10.0.0.0/8"],
/// });
/// const subnetwork_reserved_secondary_range = new gcp.compute.Subnetwork("subnetwork-reserved-secondary-range", {
///     name: "subnetwork-reserved-secondary-range",
///     region: "us-central1",
///     network: _default.id,
///     reservedInternalRange: pulumi.interpolate`networkconnectivity.googleapis.com/${reserved.id}`,
///     secondaryIpRanges: [{
///         rangeName: "secondary",
///         reservedInternalRange: pulumi.interpolate`networkconnectivity.googleapis.com/${reservedSecondary.id}`,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network-reserved-secondary-range",
///     auto_create_subnetworks=False)
/// reserved = gcp.networkconnectivity.InternalRange("reserved",
///     name="reserved-primary",
///     network=default.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["10.0.0.0/8"])
/// reserved_secondary = gcp.networkconnectivity.InternalRange("reserved_secondary",
///     name="reserved-secondary",
///     network=default.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=16,
///     target_cidr_ranges=["10.0.0.0/8"])
/// subnetwork_reserved_secondary_range = gcp.compute.Subnetwork("subnetwork-reserved-secondary-range",
///     name="subnetwork-reserved-secondary-range",
///     region="us-central1",
///     network=default.id,
///     reserved_internal_range=reserved.id.apply(lambda id: f"networkconnectivity.googleapis.com/{id}"),
///     secondary_ip_ranges=[{
///         "range_name": "secondary",
///         "reserved_internal_range": reserved_secondary.id.apply(lambda id: f"networkconnectivity.googleapis.com/{id}"),
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network-reserved-secondary-range",
///         AutoCreateSubnetworks = false,
///     });
///
///     var reserved = new Gcp.NetworkConnectivity.InternalRange("reserved", new()
///     {
///         Name = "reserved-primary",
///         Network = @default.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var reservedSecondary = new Gcp.NetworkConnectivity.InternalRange("reserved_secondary", new()
///     {
///         Name = "reserved-secondary",
///         Network = @default.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 16,
///         TargetCidrRanges = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var subnetwork_reserved_secondary_range = new Gcp.Compute.Subnetwork("subnetwork-reserved-secondary-range", new()
///     {
///         Name = "subnetwork-reserved-secondary-range",
///         Region = "us-central1",
///         Network = @default.Id,
///         ReservedInternalRange = reserved.Id.Apply(id => $"networkconnectivity.googleapis.com/{id}"),
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "secondary",
///                 ReservedInternalRange = reservedSecondary.Id.Apply(id => $"networkconnectivity.googleapis.com/{id}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-reserved-secondary-range"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reserved, err := networkconnectivity.NewInternalRange(ctx, "reserved", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("reserved-primary"),
/// 			Network:      _default.ID(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reservedSecondary, err := networkconnectivity.NewInternalRange(ctx, "reserved_secondary", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("reserved-secondary"),
/// 			Network:      _default.ID(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(16),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-reserved-secondary-range", &compute.SubnetworkArgs{
/// 			Name:    pulumi.String("subnetwork-reserved-secondary-range"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Network: _default.ID(),
/// 			ReservedInternalRange: reserved.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("networkconnectivity.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName: pulumi.String("secondary"),
/// 					ReservedInternalRange: reservedSecondary.ID().ApplyT(func(id string) (string, error) {
/// 						return fmt.Sprintf("networkconnectivity.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network-reserved-secondary-range")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var reserved = new InternalRange("reserved", InternalRangeArgs.builder()
///             .name("reserved-primary")
///             .network(default_.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("10.0.0.0/8")
///             .build());
///
///         var reservedSecondary = new InternalRange("reservedSecondary", InternalRangeArgs.builder()
///             .name("reserved-secondary")
///             .network(default_.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(16)
///             .targetCidrRanges("10.0.0.0/8")
///             .build());
///
///         var subnetwork_reserved_secondary_range = new Subnetwork("subnetwork-reserved-secondary-range", SubnetworkArgs.builder()
///             .name("subnetwork-reserved-secondary-range")
///             .region("us-central1")
///             .network(default_.id())
///             .reservedInternalRange(reserved.id().applyValue(_id -> String.format("networkconnectivity.googleapis.com/%s", _id)))
///             .secondaryIpRanges(SubnetworkSecondaryIpRangeArgs.builder()
///                 .rangeName("secondary")
///                 .reservedInternalRange(reservedSecondary.id().applyValue(_id -> String.format("networkconnectivity.googleapis.com/%s", _id)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-reserved-secondary-range:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnetwork-reserved-secondary-range
///       region: us-central1
///       network: ${default.id}
///       reservedInternalRange: networkconnectivity.googleapis.com/${reserved.id}
///       secondaryIpRanges:
///         - rangeName: secondary
///           reservedInternalRange: networkconnectivity.googleapis.com/${reservedSecondary.id}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network-reserved-secondary-range
///       autoCreateSubnetworks: false
///   reserved:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: reserved-primary
///       network: ${default.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 10.0.0.0/8
///   reservedSecondary:
///     type: gcp:networkconnectivity:InternalRange
///     name: reserved_secondary
///     properties:
///       name: reserved-secondary
///       network: ${default.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 16
///       targetCidrRanges:
///         - 10.0.0.0/8
/// ```
///
///
/// ## Import
///
/// Subnetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/subnetworks/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subnetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default projects/{{project}}/regions/{{region}}/subnetworks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{name}}
/// ```
class Subnetwork extends pulumi.CustomResource {
  /// Typically packets destined to IPs within the subnetwork range that do not match
  /// existing resources are dropped and prevented from leaving the VPC.
  /// Setting this field to true will allow these packets to match dynamic routes injected
  /// via BGP even if their destinations match existing subnet ranges.
  late final pulumi.Output<bool> allowSubnetCidrRoutesOverlap;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource. This field can be set only at resource
  /// creation time.
  late final pulumi.Output<String?> description;

  /// The range of external IPv6 addresses that are owned by this subnetwork.
  late final pulumi.Output<String> externalIpv6Prefix;

  /// Fingerprint of this resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// The gateway address for default routes to reach destination addresses
  /// outside this subnetwork.
  late final pulumi.Output<String> gatewayAddress;

  /// The internal IPv6 address range that is assigned to this subnetwork.
  late final pulumi.Output<String> internalIpv6Prefix;

  /// The range of internal addresses that are owned by this subnetwork.
  /// Provide this property when you create the subnetwork. For example,
  /// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
  /// non-overlapping within a network. Only IPv4 is supported.
  /// Field is optional when `reserved_internal_range` is defined, otherwise required.
  late final pulumi.Output<String> ipCidrRange;

  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_SUBNETWORK_CREATION or INTERNAL_IPV6_SUBNETWORK_CREATION
  /// mode. Use one of the following formats to specify a sub-PDP when creating
  /// a dual stack or IPv6-only subnetwork using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  late final pulumi.Output<String?> ipCollection;

  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet
  /// cannot enable direct path.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final pulumi.Output<String?> ipv6AccessType;

  /// The range of internal IPv6 addresses that are owned by this subnetwork.
  late final pulumi.Output<String> ipv6CidrRange;

  /// Possible endpoints of this subnetwork. It can be one of the following:
  /// * VM_ONLY: The subnetwork can be used for creating instances and IPv6 addresses with VM endpoint type. Such a subnetwork
  /// gets external IPv6 ranges from a public delegated prefix and cannot be used to create NetLb.
  /// * VM_AND_FR: The subnetwork can be used for creating both VM instances and Forwarding Rules. It can also be used to reserve
  /// IPv6 addresses with both VM and FR endpoint types. Such a subnetwork gets its IPv6 range from Google IP Pool directly.
  late final pulumi.Output<String> ipv6GceEndpoint;

  /// This field denotes the VPC flow logging options for this subnetwork. If
  /// logging is enabled, logs are exported to Cloud Logging. Flow logging
  /// isn't supported if the subnet `purpose` field is set to subnetwork is
  /// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
  /// Structure is documented below.
  late final pulumi.Output<SubnetworkLogConfig?> logConfig;

  /// The name of the resource, provided by the client when initially
  /// creating the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The network this subnet belongs to.
  /// Only networks that are in the distributed mode can have subnetworks.
  late final pulumi.Output<String> network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<SubnetworkParams?> params;

  /// When enabled, VMs in this subnetwork without external IP addresses can
  /// access Google APIs and services by using Private Google Access.
  late final pulumi.Output<bool> privateIpGoogleAccess;

  /// The private IPv6 google access type for the VMs in this subnet.
  late final pulumi.Output<String> privateIpv6GoogleAccess;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`.
  /// A subnet with purpose set to `REGIONAL_MANAGED_PROXY` is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
  /// A subnetwork in a given region with purpose set to `GLOBAL_MANAGED_PROXY` is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
  /// A subnetwork with purpose set to `PRIVATE_SERVICE_CONNECT` reserves the subnet for hosting a Private Service Connect published service.
  /// A subnetwork with purpose set to `PEER_MIGRATION` is a user created subnetwork that is reserved for migrating resources from one peered network to another.
  /// A subnetwork with purpose set to `PRIVATE_NAT` is used as source range for Private NAT gateways.
  /// Note that `REGIONAL_MANAGED_PROXY` is the preferred setting for all regional Envoy load balancers.
  /// If unspecified, the purpose defaults to `PRIVATE`.
  late final pulumi.Output<String> purpose;

  /// The GCP region for this subnetwork.
  late final pulumi.Output<String> region;

  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  late final pulumi.Output<String?> reservedInternalRange;

  /// 'Configures subnet mask resolution for this subnetwork.'
  /// Possible values are: `ARP_ALL_RANGES`, `ARP_PRIMARY_RANGE`.
  late final pulumi.Output<String?> resolveSubnetMask;

  /// The role of subnetwork.
  /// Currently, this field is only used when `purpose` is `REGIONAL_MANAGED_PROXY`.
  /// The value can be set to `ACTIVE` or `BACKUP`.
  /// An `ACTIVE` subnetwork is one that is currently being used for Envoy-based load balancers in a region.
  /// A `BACKUP` subnetwork is one that is ready to be promoted to `ACTIVE` or is currently draining.
  /// Possible values are: `ACTIVE`, `BACKUP`.
  late final pulumi.Output<String?> role;

  /// An array of configurations for secondary IP ranges for VM instances
  /// contained in this subnetwork. The primary IP of such VM must belong
  /// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
  /// to either primary or secondary ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<SubnetworkSecondaryIpRange>> secondaryIpRanges;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Controls the removal behavior of secondary_ip_range.
  /// When false, removing secondary_ip_range from config will not produce a diff as
  /// the provider will default to the API's value.
  /// When true, the provider will treat removing secondary_ip_range as sending an
  /// empty list of secondary IP ranges to the API.
  /// Defaults to false.
  late final pulumi.Output<bool?> sendSecondaryIpRangeIfEmpty;

  /// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// If not specified IPV4_ONLY will be used.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  late final pulumi.Output<String> stackType;

  /// 'The state of the subnetwork, which can be one of the following values:
  /// READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose
  /// set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained.
  /// A subnetwork that is draining cannot be used or modified until it reaches a status of READY'
  late final pulumi.Output<String> state;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> subnetworkId;

  /// Creates a new [Subnetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnetwork]. {@macro pulumi_compute_subnetwork_subnetwork_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnetwork(
    String name, {
    SubnetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/subnetwork:Subnetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allowSubnetCidrRoutesOverlap = registerOutput<bool>(
      'allowSubnetCidrRoutesOverlap',
    );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.externalIpv6Prefix = registerOutput<String>('externalIpv6Prefix');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.gatewayAddress = registerOutput<String>('gatewayAddress');
    this.internalIpv6Prefix = registerOutput<String>('internalIpv6Prefix');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipCollection = registerOutput<String?>('ipCollection');
    this.ipv6AccessType = registerOutput<String?>('ipv6AccessType');
    this.ipv6CidrRange = registerOutput<String>('ipv6CidrRange');
    this.ipv6GceEndpoint = registerOutput<String>('ipv6GceEndpoint');
    this.logConfig = registerOutput<SubnetworkLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.params = registerOutput<SubnetworkParams?>('params');
    this.privateIpGoogleAccess = registerOutput<bool>('privateIpGoogleAccess');
    this.privateIpv6GoogleAccess = registerOutput<String>(
      'privateIpv6GoogleAccess',
    );
    this.project = registerOutput<String>('project');
    this.purpose = registerOutput<String>('purpose');
    this.region = registerOutput<String>('region');
    this.reservedInternalRange = registerOutput<String?>(
      'reservedInternalRange',
    );
    this.resolveSubnetMask = registerOutput<String?>('resolveSubnetMask');
    this.role = registerOutput<String?>('role');
    this.secondaryIpRanges = registerOutput<List<SubnetworkSecondaryIpRange>>(
      'secondaryIpRanges',
    );
    this.selfLink = registerOutput<String>('selfLink');
    this.sendSecondaryIpRangeIfEmpty = registerOutput<bool?>(
      'sendSecondaryIpRangeIfEmpty',
    );
    this.stackType = registerOutput<String>('stackType');
    this.state = registerOutput<String>('state');
    this.subnetworkId = registerOutput<int>('subnetworkId');
  }
}
