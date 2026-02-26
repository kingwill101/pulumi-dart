import 'package:pulumi/pulumi.dart';
import 'address_args.dart';

/// Represents an Address resource.
///
/// Each virtual machine instance has an ephemeral internal IP address and,
/// optionally, an external IP address. To communicate between instances on
/// the same network, you can use an instance's internal IP address. To
/// communicate with the Internet and instances outside of the same network,
/// you must specify the instance's external IP address.
///
/// Internal IP addresses are ephemeral and only belong to an instance for
/// the lifetime of the instance; if the instance is deleted and recreated,
/// the instance is assigned a new internal IP address, either by Compute
/// Engine or by you. External IP addresses can be either ephemeral or
/// static.
///
///
/// To get more information about Address, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/beta/addresses)
/// * How-to Guides
/// * [Reserving a Static External IP Address](https://cloud.google.com/compute/docs/instances-and-network)
/// * [Reserving a Static Internal IP Address](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address)
///
/// ## Example Usage
///
/// ### Address Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ipAddress = new gcp.compute.Address("ip_address", {name: "my-address"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ip_address = gcp.compute.Address("ip_address", name="my-address")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ipAddress = new Gcp.Compute.Address("ip_address", new()
/// {
/// Name = "my-address",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewAddress(ctx, "ip_address", &compute.AddressArgs{
/// Name: pulumi.String("my-address"),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
/// var ipAddress = new Address("ipAddress", AddressArgs.builder()
/// .name("my-address")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ipAddress:
/// type: gcp:compute:Address
/// name: ip_address
/// properties:
/// name: my-address
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Address With Subnetwork
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "my-network"});
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "my-subnet",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: _default.id,
/// });
/// const internalWithSubnetAndAddress = new gcp.compute.Address("internal_with_subnet_and_address", {
/// name: "my-internal-address",
/// subnetwork: defaultSubnetwork.id,
/// addressType: "INTERNAL",
/// address: "10.0.42.42",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="my-network")
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="my-subnet",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=default.id)
/// internal_with_subnet_and_address = gcp.compute.Address("internal_with_subnet_and_address",
/// name="my-internal-address",
/// subnetwork=default_subnetwork.id,
/// address_type="INTERNAL",
/// address="10.0.42.42",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "my-network",
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "my-subnet",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = @default.Id,
/// });
///
/// var internalWithSubnetAndAddress = new Gcp.Compute.Address("internal_with_subnet_and_address", new()
/// {
/// Name = "my-internal-address",
/// Subnetwork = defaultSubnetwork.Id,
/// AddressType = "INTERNAL",
/// IPAddress = "10.0.42.42",
/// Region = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("my-network"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("my-subnet"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewAddress(ctx, "internal_with_subnet_and_address", &compute.AddressArgs{
/// Name:        pulumi.String("my-internal-address"),
/// Subnetwork:  defaultSubnetwork.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// Address:     pulumi.String("10.0.42.42"),
/// Region:      pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("my-network")
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("my-subnet")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(default_.id())
/// .build());
///
/// var internalWithSubnetAndAddress = new Address("internalWithSubnetAndAddress", AddressArgs.builder()
/// .name("my-internal-address")
/// .subnetwork(defaultSubnetwork.id())
/// .addressType("INTERNAL")
/// .address("10.0.42.42")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: my-subnet
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${default.id}
/// internalWithSubnetAndAddress:
/// type: gcp:compute:Address
/// name: internal_with_subnet_and_address
/// properties:
/// name: my-internal-address
/// subnetwork: ${defaultSubnetwork.id}
/// addressType: INTERNAL
/// address: 10.0.42.42
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Address With Gce Endpoint
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const internalWithGceEndpoint = new gcp.compute.Address("internal_with_gce_endpoint", {
/// name: "my-internal-address-",
/// addressType: "INTERNAL",
/// purpose: "GCE_ENDPOINT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// internal_with_gce_endpoint = gcp.compute.Address("internal_with_gce_endpoint",
/// name="my-internal-address-",
/// address_type="INTERNAL",
/// purpose="GCE_ENDPOINT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var internalWithGceEndpoint = new Gcp.Compute.Address("internal_with_gce_endpoint", new()
/// {
/// Name = "my-internal-address-",
/// AddressType = "INTERNAL",
/// Purpose = "GCE_ENDPOINT",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewAddress(ctx, "internal_with_gce_endpoint", &compute.AddressArgs{
/// Name:        pulumi.String("my-internal-address-"),
/// AddressType: pulumi.String("INTERNAL"),
/// Purpose:     pulumi.String("GCE_ENDPOINT"),
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
/// var internalWithGceEndpoint = new Address("internalWithGceEndpoint", AddressArgs.builder()
/// .name("my-internal-address-")
/// .addressType("INTERNAL")
/// .purpose("GCE_ENDPOINT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// internalWithGceEndpoint:
/// type: gcp:compute:Address
/// name: internal_with_gce_endpoint
/// properties:
/// name: my-internal-address-
/// addressType: INTERNAL
/// purpose: GCE_ENDPOINT
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Instance With Ip
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const static = new gcp.compute.Address("static", {name: "ipv4-address"});
/// const debianImage = gcp.compute.getImage({
/// family: "debian-11",
/// project: "debian-cloud",
/// });
/// const instanceWithIp = new gcp.compute.Instance("instance_with_ip", {
/// name: "vm-instance",
/// machineType: "f1-micro",
/// zone: "us-central1-a",
/// bootDisk: {
/// initializeParams: {
/// image: debianImage.then(debianImage => debianImage.selfLink),
/// },
/// },
/// networkInterfaces: [{
/// network: "default",
/// accessConfigs: [{
/// natIp: static.address,
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// static = gcp.compute.Address("static", name="ipv4-address")
/// debian_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// instance_with_ip = gcp.compute.Instance("instance_with_ip",
/// name="vm-instance",
/// machine_type="f1-micro",
/// zone="us-central1-a",
/// boot_disk={
/// "initialize_params": {
/// "image": debian_image.self_link,
/// },
/// },
/// network_interfaces=[{
/// "network": "default",
/// "access_configs": [{
/// "nat_ip": static.address,
/// }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @static = new Gcp.Compute.Address("static", new()
/// {
/// Name = "ipv4-address",
/// });
///
/// var debianImage = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-11",
/// Project = "debian-cloud",
/// });
///
/// var instanceWithIp = new Gcp.Compute.Instance("instance_with_ip", new()
/// {
/// Name = "vm-instance",
/// MachineType = "f1-micro",
/// Zone = "us-central1-a",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = debianImage.Apply(getImageResult => getImageResult.SelfLink),
/// },
/// },
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// Network = "default",
/// AccessConfigs = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceAccessConfigArgs
/// {
/// NatIp = @static.IPAddress,
/// },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// static, err := compute.NewAddress(ctx, "static", &compute.AddressArgs{
/// Name: pulumi.String("ipv4-address"),
/// })
/// if err != nil {
/// return err
/// }
/// debianImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-11"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "instance_with_ip", &compute.InstanceArgs{
/// Name:        pulumi.String("vm-instance"),
/// MachineType: pulumi.String("f1-micro"),
/// Zone:        pulumi.String("us-central1-a"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String(debianImage.SelfLink),
/// },
/// },
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// Network: pulumi.String("default"),
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{
/// NatIp: static.Address,
/// },
/// },
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
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
/// var static_ = new Address("static", AddressArgs.builder()
/// .name("ipv4-address")
/// .build());
///
/// final var debianImage = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-11")
/// .project("debian-cloud")
/// .build());
///
/// var instanceWithIp = new Instance("instanceWithIp", InstanceArgs.builder()
/// .name("vm-instance")
/// .machineType("f1-micro")
/// .zone("us-central1-a")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image(debianImage.selfLink())
/// .build())
/// .build())
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .network("default")
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .natIp(static_.address())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// static:
/// type: gcp:compute:Address
/// properties:
/// name: ipv4-address
/// instanceWithIp:
/// type: gcp:compute:Instance
/// name: instance_with_ip
/// properties:
/// name: vm-instance
/// machineType: f1-micro
/// zone: us-central1-a
/// bootDisk:
/// initializeParams:
/// image: ${debianImage.selfLink}
/// networkInterfaces:
/// - network: default
/// accessConfigs:
/// - natIp: ${static.address}
/// variables:
/// debianImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Compute Address Ipsec Interconnect
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// name: "test-network",
/// autoCreateSubnetworks: false,
/// });
/// const ipsec_interconnect_address = new gcp.compute.Address("ipsec-interconnect-address", {
/// name: "test-address",
/// addressType: "INTERNAL",
/// purpose: "IPSEC_INTERCONNECT",
/// address: "192.168.1.0",
/// prefixLength: 29,
/// network: network.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// name="test-network",
/// auto_create_subnetworks=False)
/// ipsec_interconnect_address = gcp.compute.Address("ipsec-interconnect-address",
/// name="test-address",
/// address_type="INTERNAL",
/// purpose="IPSEC_INTERCONNECT",
/// address="192.168.1.0",
/// prefix_length=29,
/// network=network.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Name = "test-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var ipsec_interconnect_address = new Gcp.Compute.Address("ipsec-interconnect-address", new()
/// {
/// Name = "test-address",
/// AddressType = "INTERNAL",
/// Purpose = "IPSEC_INTERCONNECT",
/// IPAddress = "192.168.1.0",
/// PrefixLength = 29,
/// Network = network.SelfLink,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("test-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewAddress(ctx, "ipsec-interconnect-address", &compute.AddressArgs{
/// Name:         pulumi.String("test-address"),
/// AddressType:  pulumi.String("INTERNAL"),
/// Purpose:      pulumi.String("IPSEC_INTERCONNECT"),
/// Address:      pulumi.String("192.168.1.0"),
/// PrefixLength: pulumi.Int(29),
/// Network:      network.SelfLink,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
/// var network = new Network("network", NetworkArgs.builder()
/// .name("test-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var ipsec_interconnect_address = new Address("ipsec-interconnect-address", AddressArgs.builder()
/// .name("test-address")
/// .addressType("INTERNAL")
/// .purpose("IPSEC_INTERCONNECT")
/// .address("192.168.1.0")
/// .prefixLength(29)
/// .network(network.selfLink())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ipsec-interconnect-address:
/// type: gcp:compute:Address
/// properties:
/// name: test-address
/// addressType: INTERNAL
/// purpose: IPSEC_INTERCONNECT
/// address: 192.168.1.0
/// prefixLength: 29
/// network: ${network.selfLink}
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: test-network
/// autoCreateSubnetworks: false
/// ```
/// <!--End PulumiCodeChooser -->
/// ## Import
///
/// Address can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/addresses/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Address can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default projects/{{project}}/regions/{{region}}/addresses/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/address:Address default {{name}}
/// ```
class Address extends CustomResource {
  /// The static external IP address represented by this resource.
  /// The IP address must be inside the specified subnetwork,
  /// if any. Set by the API if undefined.
  late final Output<String> address;

  /// The type of address to reserve.
  /// Note: if you set this argument's value as `INTERNAL` you need to leave the <span pulumi-lang-nodejs="`networkTier`" pulumi-lang-dotnet="`NetworkTier`" pulumi-lang-go="`networkTier`" pulumi-lang-python="`network_tier`" pulumi-lang-yaml="`networkTier`" pulumi-lang-java="`networkTier`">`network_tier`</span> argument unset in that resource block.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `INTERNAL`, `EXTERNAL`.
  late final Output<String?> addressType;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Reference to the source of external IPv4 addresses, like a PublicDelegatedPrefix(PDP) for BYOIP.
  /// The PDP must support enhanced IPv4 allocations.
  /// Use one of the following formats to specify a PDP when reserving an external IPv4 address using BYOIP.
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}`
  late final Output<String?> ipCollection;

  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String?> ipVersion;

  /// The endpoint type of this address, which should be VM or NETLB. This is
  /// used for deciding which type of endpoint this address can be used after
  /// the external IPv6 address reservation.
  /// Possible values are: `VM`, `NETLB`.
  late final Output<String?> ipv6EndpointType;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this address.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network in which to reserve the address. This field
  /// can only be used with INTERNAL type with the VPC_PEERING and
  /// IPSEC_INTERCONNECT purposes.
  late final Output<String?> network;

  /// The networking tier used for configuring this address. If this field is not
  /// specified, it is assumed to be PREMIUM.
  /// This argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it's always Premium](https://cloud.google.com/network-tiers/docs/overview).
  /// Possible values are: `PREMIUM`, `STANDARD`.
  late final Output<String> networkTier;

  /// The prefix length if the resource represents an IP range.
  late final Output<int> prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The purpose of this resource, which can be one of the following values.
  /// * GCE_ENDPOINT for addresses that are used by VM instances, alias IP
  /// ranges, load balancers, and similar resources.
  /// * SHARED_LOADBALANCER_VIP for an address that can be used by multiple
  /// internal load balancers.
  /// * VPC_PEERING for addresses that are reserved for VPC peer networks.
  /// * IPSEC_INTERCONNECT for addresses created from a private IP range that
  /// are reserved for a VLAN attachment in an HA VPN over Cloud Interconnect
  /// configuration. These addresses are regional resources.
  /// * PRIVATE_SERVICE_CONNECT for a private network address that is used to
  /// configure Private Service Connect. Only global internal addresses can use
  /// this purpose.
  /// This should only be set when using an Internal address.
  late final Output<String> purpose;

  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The URL of the subnetwork in which to reserve the address. If an IP
  /// address is specified, it must be within the subnetwork's IP range.
  /// This field can only be used with INTERNAL type with
  /// GCE_ENDPOINT/DNS_RESOLVER purposes.
  late final Output<String> subnetwork;

  /// The URLs of the resources that are using this address.
  late final Output<List<String>> users;

  Address(
    String name, {
    AddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/address:Address',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = Output.createUnknown<String>();
    this.addressType = Output.createUnknown<String?>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.ipCollection = Output.createUnknown<String?>();
    this.ipVersion = Output.createUnknown<String?>();
    this.ipv6EndpointType = Output.createUnknown<String?>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String?>();
    this.networkTier = Output.createUnknown<String>();
    this.prefixLength = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.purpose = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.subnetwork = Output.createUnknown<String>();
    this.users = Output.createUnknown<List<String>>();
  }
}
