import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_endpoint_args.dart';

/// A Region network endpoint represents a IP address/FQDN and port combination that is
/// part of a specific network endpoint group (NEG).
///
/// > **NOTE**: Network endpoints cannot be created outside of a network endpoint group.
///
///
/// To get more information about RegionNetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionNetworkEndpointGroups)
/// * How-to Guides
/// * [Internet NEGs Official Documentation](https://cloud.google.com/load-balancing/docs/negs/internet-neg-concepts)
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Region Network Endpoint Internet Ip Port
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const group = new gcp.compute.RegionNetworkEndpointGroup("group", {
///     name: "ip-port-neg",
///     network: _default.id,
///     region: "us-central1",
///     networkEndpointType: "INTERNET_IP_PORT",
/// });
/// const region_internet_ip_port_endpoint = new gcp.compute.RegionNetworkEndpoint("region-internet-ip-port-endpoint", {
///     regionNetworkEndpointGroup: group.name,
///     region: "us-central1",
///     ipAddress: "8.8.8.8",
///     port: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network",
///     auto_create_subnetworks=False)
/// group = gcp.compute.RegionNetworkEndpointGroup("group",
///     name="ip-port-neg",
///     network=default.id,
///     region="us-central1",
///     network_endpoint_type="INTERNET_IP_PORT")
/// region_internet_ip_port_endpoint = gcp.compute.RegionNetworkEndpoint("region-internet-ip-port-endpoint",
///     region_network_endpoint_group=group.name,
///     region="us-central1",
///     ip_address="8.8.8.8",
///     port=443)
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
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @group = new Gcp.Compute.RegionNetworkEndpointGroup("group", new()
///     {
///         Name = "ip-port-neg",
///         Network = @default.Id,
///         Region = "us-central1",
///         NetworkEndpointType = "INTERNET_IP_PORT",
///     });
///
///     var region_internet_ip_port_endpoint = new Gcp.Compute.RegionNetworkEndpoint("region-internet-ip-port-endpoint", new()
///     {
///         RegionNetworkEndpointGroup = @group.Name,
///         Region = "us-central1",
///         IpAddress = "8.8.8.8",
///         Port = 443,
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := compute.NewRegionNetworkEndpointGroup(ctx, "group", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("ip-port-neg"),
/// 			Network:             _default.ID(),
/// 			Region:              pulumi.String("us-central1"),
/// 			NetworkEndpointType: pulumi.String("INTERNET_IP_PORT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpoint(ctx, "region-internet-ip-port-endpoint", &compute.RegionNetworkEndpointArgs{
/// 			RegionNetworkEndpointGroup: group.Name,
/// 			Region:                     pulumi.String("us-central1"),
/// 			IpAddress:                  pulumi.String("8.8.8.8"),
/// 			Port:                       pulumi.Int(443),
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
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpoint;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointArgs;
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
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var group = new RegionNetworkEndpointGroup("group", RegionNetworkEndpointGroupArgs.builder()
///             .name("ip-port-neg")
///             .network(default_.id())
///             .region("us-central1")
///             .networkEndpointType("INTERNET_IP_PORT")
///             .build());
///
///         var region_internet_ip_port_endpoint = new RegionNetworkEndpoint("region-internet-ip-port-endpoint", RegionNetworkEndpointArgs.builder()
///             .regionNetworkEndpointGroup(group.name())
///             .region("us-central1")
///             .ipAddress("8.8.8.8")
///             .port(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-internet-ip-port-endpoint:
///     type: gcp:compute:RegionNetworkEndpoint
///     properties:
///       regionNetworkEndpointGroup: ${group.name}
///       region: us-central1
///       ipAddress: 8.8.8.8
///       port: 443
///   group:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     properties:
///       name: ip-port-neg
///       network: ${default.id}
///       region: us-central1
///       networkEndpointType: INTERNET_IP_PORT
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Region Network Endpoint Internet Fqdn Port
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const group = new gcp.compute.RegionNetworkEndpointGroup("group", {
///     name: "fqdn-port-neg",
///     network: _default.id,
///     region: "us-central1",
///     networkEndpointType: "INTERNET_FQDN_PORT",
/// });
/// const region_internet_fqdn_port_endpoint = new gcp.compute.RegionNetworkEndpoint("region-internet-fqdn-port-endpoint", {
///     regionNetworkEndpointGroup: group.name,
///     region: "us-central1",
///     fqdn: "backend.example.com",
///     port: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network",
///     auto_create_subnetworks=False)
/// group = gcp.compute.RegionNetworkEndpointGroup("group",
///     name="fqdn-port-neg",
///     network=default.id,
///     region="us-central1",
///     network_endpoint_type="INTERNET_FQDN_PORT")
/// region_internet_fqdn_port_endpoint = gcp.compute.RegionNetworkEndpoint("region-internet-fqdn-port-endpoint",
///     region_network_endpoint_group=group.name,
///     region="us-central1",
///     fqdn="backend.example.com",
///     port=443)
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
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @group = new Gcp.Compute.RegionNetworkEndpointGroup("group", new()
///     {
///         Name = "fqdn-port-neg",
///         Network = @default.Id,
///         Region = "us-central1",
///         NetworkEndpointType = "INTERNET_FQDN_PORT",
///     });
///
///     var region_internet_fqdn_port_endpoint = new Gcp.Compute.RegionNetworkEndpoint("region-internet-fqdn-port-endpoint", new()
///     {
///         RegionNetworkEndpointGroup = @group.Name,
///         Region = "us-central1",
///         Fqdn = "backend.example.com",
///         Port = 443,
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := compute.NewRegionNetworkEndpointGroup(ctx, "group", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("fqdn-port-neg"),
/// 			Network:             _default.ID(),
/// 			Region:              pulumi.String("us-central1"),
/// 			NetworkEndpointType: pulumi.String("INTERNET_FQDN_PORT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpoint(ctx, "region-internet-fqdn-port-endpoint", &compute.RegionNetworkEndpointArgs{
/// 			RegionNetworkEndpointGroup: group.Name,
/// 			Region:                     pulumi.String("us-central1"),
/// 			Fqdn:                       pulumi.String("backend.example.com"),
/// 			Port:                       pulumi.Int(443),
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
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpoint;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointArgs;
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
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var group = new RegionNetworkEndpointGroup("group", RegionNetworkEndpointGroupArgs.builder()
///             .name("fqdn-port-neg")
///             .network(default_.id())
///             .region("us-central1")
///             .networkEndpointType("INTERNET_FQDN_PORT")
///             .build());
///
///         var region_internet_fqdn_port_endpoint = new RegionNetworkEndpoint("region-internet-fqdn-port-endpoint", RegionNetworkEndpointArgs.builder()
///             .regionNetworkEndpointGroup(group.name())
///             .region("us-central1")
///             .fqdn("backend.example.com")
///             .port(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-internet-fqdn-port-endpoint:
///     type: gcp:compute:RegionNetworkEndpoint
///     properties:
///       regionNetworkEndpointGroup: ${group.name}
///       region: us-central1
///       fqdn: backend.example.com
///       port: 443
///   group:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     properties:
///       name: fqdn-port-neg
///       network: ${default.id}
///       region: us-central1
///       networkEndpointType: INTERNET_FQDN_PORT
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Region Network Endpoint Portmap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "subnetwork",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
///     network: _default.id,
/// });
/// const defaultRegionNetworkEndpointGroup = new gcp.compute.RegionNetworkEndpointGroup("default", {
///     name: "portmap-neg",
///     region: "us-central1",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     networkEndpointType: "GCE_VM_IP_PORTMAP",
/// });
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const defaultInstance = new gcp.compute.Instance("default", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///     }],
///     name: "instance",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const regionNetworkEndpointPortmap = new gcp.compute.RegionNetworkEndpoint("region_network_endpoint_portmap", {
///     regionNetworkEndpointGroup: defaultRegionNetworkEndpointGroup.name,
///     region: "us-central1",
///     instance: defaultInstance.selfLink,
///     port: 80,
///     ipAddress: defaultInstance.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].networkIp),
///     clientDestinationPort: 8080,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="subnetwork",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1",
///     network=default.id)
/// default_region_network_endpoint_group = gcp.compute.RegionNetworkEndpointGroup("default",
///     name="portmap-neg",
///     region="us-central1",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     network_endpoint_type="GCE_VM_IP_PORTMAP")
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// default_instance = gcp.compute.Instance("default",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///     }],
///     name="instance",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// region_network_endpoint_portmap = gcp.compute.RegionNetworkEndpoint("region_network_endpoint_portmap",
///     region_network_endpoint_group=default_region_network_endpoint_group.name,
///     region="us-central1",
///     instance=default_instance.self_link,
///     port=80,
///     ip_address=default_instance.network_interfaces[0].network_ip,
///     client_destination_port=8080)
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
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "subnetwork",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///         Network = @default.Id,
///     });
///
///     var defaultRegionNetworkEndpointGroup = new Gcp.Compute.RegionNetworkEndpointGroup("default", new()
///     {
///         Name = "portmap-neg",
///         Region = "us-central1",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         NetworkEndpointType = "GCE_VM_IP_PORTMAP",
///     });
///
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var defaultInstance = new Gcp.Compute.Instance("default", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Subnetwork = defaultSubnetwork.Id,
///             },
///         },
///         Name = "instance",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///     });
///
///     var regionNetworkEndpointPortmap = new Gcp.Compute.RegionNetworkEndpoint("region_network_endpoint_portmap", new()
///     {
///         RegionNetworkEndpointGroup = defaultRegionNetworkEndpointGroup.Name,
///         Region = "us-central1",
///         Instance = defaultInstance.SelfLink,
///         Port = 80,
///         IpAddress = defaultInstance.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
///         ClientDestinationPort = 8080,
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionNetworkEndpointGroup, err := compute.NewRegionNetworkEndpointGroup(ctx, "default", &compute.RegionNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("portmap-neg"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Network:             _default.ID(),
/// 			Subnetwork:          defaultSubnetwork.ID(),
/// 			NetworkEndpointType: pulumi.String("GCE_VM_IP_PORTMAP"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkEndpoint(ctx, "region_network_endpoint_portmap", &compute.RegionNetworkEndpointArgs{
/// 			RegionNetworkEndpointGroup: defaultRegionNetworkEndpointGroup.Name,
/// 			Region:                     pulumi.String("us-central1"),
/// 			Instance:                   defaultInstance.SelfLink,
/// 			Port:                       pulumi.Int(80),
/// 			IpAddress: pulumi.String(defaultInstance.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 				return &networkInterfaces[0].NetworkIp, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ClientDestinationPort: pulumi.Int(8080),
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
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.RegionNetworkEndpoint;
/// import com.pulumi.gcp.compute.RegionNetworkEndpointArgs;
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
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("subnetwork")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .network(default_.id())
///             .build());
///
///         var defaultRegionNetworkEndpointGroup = new RegionNetworkEndpointGroup("defaultRegionNetworkEndpointGroup", RegionNetworkEndpointGroupArgs.builder()
///             .name("portmap-neg")
///             .region("us-central1")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .networkEndpointType("GCE_VM_IP_PORTMAP")
///             .build());
///
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .name("instance")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var regionNetworkEndpointPortmap = new RegionNetworkEndpoint("regionNetworkEndpointPortmap", RegionNetworkEndpointArgs.builder()
///             .regionNetworkEndpointGroup(defaultRegionNetworkEndpointGroup.name())
///             .region("us-central1")
///             .instance(defaultInstance.selfLink())
///             .port(80)
///             .ipAddress(defaultInstance.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].networkIp()))
///             .clientDestinationPort(8080)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: subnetwork
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///       network: ${default.id}
///   defaultRegionNetworkEndpointGroup:
///     type: gcp:compute:RegionNetworkEndpointGroup
///     name: default
///     properties:
///       name: portmap-neg
///       region: us-central1
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       networkEndpointType: GCE_VM_IP_PORTMAP
///   regionNetworkEndpointPortmap:
///     type: gcp:compute:RegionNetworkEndpoint
///     name: region_network_endpoint_portmap
///     properties:
///       regionNetworkEndpointGroup: ${defaultRegionNetworkEndpointGroup.name}
///       region: us-central1
///       instance: ${defaultInstance.selfLink}
///       port: 80
///       ipAddress: ${defaultInstance.networkInterfaces[0].networkIp}
///       clientDestinationPort: 8080
///   defaultInstance:
///     type: gcp:compute:Instance
///     name: default
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///       name: instance
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// RegionNetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{project}}/{{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// When using the `pulumi import` command, RegionNetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default {{project}}/{{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default {{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default {{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
class RegionNetworkEndpoint extends pulumi.CustomResource {
  /// Client destination port for the `GCE_VM_IP_PORTMAP` NEG.
  late final pulumi.Output<int?> clientDestinationPort;
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  late final pulumi.Output<String?> fqdn;
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORTMAP.
  late final pulumi.Output<String?> instance;
  /// IPv4 address external endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_IP_PORT.
  late final pulumi.Output<String?> ipAddress;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> networkEndpointId;
  /// Port number of network endpoint.
  late final pulumi.Output<int> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the containing network endpoint group is located.
  late final pulumi.Output<String> region;
  /// The network endpoint group this endpoint is part of.
  late final pulumi.Output<String> regionNetworkEndpointGroup;

  /// Creates a new [RegionNetworkEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkEndpoint]. {@macro pulumi_compute_region_network_endpoint_region_network_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkEndpoint(
    String name, {
    RegionNetworkEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientDestinationPort = registerOutput<int?>('clientDestinationPort');
    this.fqdn = registerOutput<String?>('fqdn');
    this.instance = registerOutput<String?>('instance');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.networkEndpointId = registerOutput<int>('networkEndpointId');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.regionNetworkEndpointGroup = registerOutput<String>('regionNetworkEndpointGroup');
  }
}
