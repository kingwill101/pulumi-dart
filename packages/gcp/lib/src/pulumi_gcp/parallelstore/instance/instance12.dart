import 'package:pulumi/pulumi.dart';
import 'instance_args12.dart';

/// A Parallelstore Instance.
///
///
///
/// ## Example Usage
///
/// ### Parallelstore Instance Basic Beta
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// name: "network",
/// autoCreateSubnetworks: true,
/// mtu: 8896,
/// });
/// // Create an IP address
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
/// name: "address",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 24,
/// network: network.id,
/// });
/// // Create a private connection
/// const _default = new gcp.servicenetworking.Connection("default", {
/// network: network.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const instance = new gcp.parallelstore.Instance("instance", {
/// instanceId: "instance",
/// location: "us-central1-a",
/// description: "test instance",
/// capacityGib: "12000",
/// network: network.name,
/// fileStripeLevel: "FILE_STRIPE_LEVEL_MIN",
/// directoryStripeLevel: "DIRECTORY_STRIPE_LEVEL_MIN",
/// deploymentType: "SCRATCH",
/// labels: {
/// test: "value",
/// },
/// }, {
/// dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// name="network",
/// auto_create_subnetworks=True,
/// mtu=8896)
/// # Create an IP address
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
/// name="address",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=24,
/// network=network.id)
/// # Create a private connection
/// default = gcp.servicenetworking.Connection("default",
/// network=network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[private_ip_alloc.name])
/// instance = gcp.parallelstore.Instance("instance",
/// instance_id="instance",
/// location="us-central1-a",
/// description="test instance",
/// capacity_gib="12000",
/// network=network.name,
/// file_stripe_level="FILE_STRIPE_LEVEL_MIN",
/// directory_stripe_level="DIRECTORY_STRIPE_LEVEL_MIN",
/// deployment_type="SCRATCH",
/// labels={
/// "test": "value",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[default]))
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
/// Name = "network",
/// AutoCreateSubnetworks = true,
/// Mtu = 8896,
/// });
///
/// // Create an IP address
/// var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
/// {
/// Name = "address",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 24,
/// Network = network.Id,
/// });
///
/// // Create a private connection
/// var @default = new Gcp.ServiceNetworking.Connection("default", new()
/// {
/// Network = network.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAlloc.Name,
/// },
/// });
///
/// var instance = new Gcp.ParallelStore.Instance("instance", new()
/// {
/// InstanceId = "instance",
/// Location = "us-central1-a",
/// Description = "test instance",
/// CapacityGib = "12000",
/// Network = network.Name,
/// FileStripeLevel = "FILE_STRIPE_LEVEL_MIN",
/// DirectoryStripeLevel = "DIRECTORY_STRIPE_LEVEL_MIN",
/// DeploymentType = "SCRATCH",
/// Labels =
/// {
/// { "test", "value" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// @default,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parallelstore"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("network"),
/// AutoCreateSubnetworks: pulumi.Bool(true),
/// Mtu:                   pulumi.Int(8896),
/// })
/// if err != nil {
/// return err
/// }
/// // Create an IP address
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("address"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(24),
/// Network:      network.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a private connection
/// _default, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// Network: network.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = parallelstore.NewInstance(ctx, "instance", &parallelstore.InstanceArgs{
/// InstanceId:           pulumi.String("instance"),
/// Location:             pulumi.String("us-central1-a"),
/// Description:          pulumi.String("test instance"),
/// CapacityGib:          pulumi.String("12000"),
/// Network:              network.Name,
/// FileStripeLevel:      pulumi.String("FILE_STRIPE_LEVEL_MIN"),
/// DirectoryStripeLevel: pulumi.String("DIRECTORY_STRIPE_LEVEL_MIN"),
/// DeploymentType:       pulumi.String("SCRATCH"),
/// Labels: pulumi.StringMap{
/// "test": pulumi.String("value"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// _default,
/// }))
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.parallelstore.Instance;
/// import com.pulumi.gcp.parallelstore.InstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// .name("network")
/// .autoCreateSubnetworks(true)
/// .mtu(8896)
/// .build());
///
/// // Create an IP address
/// var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
/// .name("address")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(24)
/// .network(network.id())
/// .build());
///
/// // Create a private connection
/// var default_ = new Connection("default", ConnectionArgs.builder()
/// .network(network.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(privateIpAlloc.name())
/// .build());
///
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .instanceId("instance")
/// .location("us-central1-a")
/// .description("test instance")
/// .capacityGib("12000")
/// .network(network.name())
/// .fileStripeLevel("FILE_STRIPE_LEVEL_MIN")
/// .directoryStripeLevel("DIRECTORY_STRIPE_LEVEL_MIN")
/// .deploymentType("SCRATCH")
/// .labels(Map.of("test", "value"))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(default_)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:parallelstore:Instance
/// properties:
/// instanceId: instance
/// location: us-central1-a
/// description: test instance
/// capacityGib: 12000
/// network: ${network.name}
/// fileStripeLevel: FILE_STRIPE_LEVEL_MIN
/// directoryStripeLevel: DIRECTORY_STRIPE_LEVEL_MIN
/// deploymentType: SCRATCH
/// labels:
/// test: value
/// options:
/// dependsOn:
/// - ${default}
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: network
/// autoCreateSubnetworks: true
/// mtu: 8896
/// # Create an IP address
/// privateIpAlloc:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_alloc
/// properties:
/// name: address
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 24
/// network: ${network.id}
/// # Create a private connection
/// default:
/// type: gcp:servicenetworking:Connection
/// properties:
/// network: ${network.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${privateIpAlloc.name}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Parallelstore Instance Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// name: "network",
/// autoCreateSubnetworks: true,
/// mtu: 8896,
/// });
/// // Create an IP address
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
/// name: "address",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 24,
/// network: network.id,
/// });
/// // Create a private connection
/// const _default = new gcp.servicenetworking.Connection("default", {
/// network: network.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const instance = new gcp.parallelstore.Instance("instance", {
/// instanceId: "instance",
/// location: "us-central1-a",
/// description: "test instance",
/// capacityGib: "12000",
/// network: network.name,
/// fileStripeLevel: "FILE_STRIPE_LEVEL_MIN",
/// directoryStripeLevel: "DIRECTORY_STRIPE_LEVEL_MIN",
/// deploymentType: "SCRATCH",
/// labels: {
/// test: "value",
/// },
/// }, {
/// dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// name="network",
/// auto_create_subnetworks=True,
/// mtu=8896)
/// # Create an IP address
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
/// name="address",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=24,
/// network=network.id)
/// # Create a private connection
/// default = gcp.servicenetworking.Connection("default",
/// network=network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[private_ip_alloc.name])
/// instance = gcp.parallelstore.Instance("instance",
/// instance_id="instance",
/// location="us-central1-a",
/// description="test instance",
/// capacity_gib="12000",
/// network=network.name,
/// file_stripe_level="FILE_STRIPE_LEVEL_MIN",
/// directory_stripe_level="DIRECTORY_STRIPE_LEVEL_MIN",
/// deployment_type="SCRATCH",
/// labels={
/// "test": "value",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[default]))
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
/// Name = "network",
/// AutoCreateSubnetworks = true,
/// Mtu = 8896,
/// });
///
/// // Create an IP address
/// var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
/// {
/// Name = "address",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 24,
/// Network = network.Id,
/// });
///
/// // Create a private connection
/// var @default = new Gcp.ServiceNetworking.Connection("default", new()
/// {
/// Network = network.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAlloc.Name,
/// },
/// });
///
/// var instance = new Gcp.ParallelStore.Instance("instance", new()
/// {
/// InstanceId = "instance",
/// Location = "us-central1-a",
/// Description = "test instance",
/// CapacityGib = "12000",
/// Network = network.Name,
/// FileStripeLevel = "FILE_STRIPE_LEVEL_MIN",
/// DirectoryStripeLevel = "DIRECTORY_STRIPE_LEVEL_MIN",
/// DeploymentType = "SCRATCH",
/// Labels =
/// {
/// { "test", "value" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// @default,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parallelstore"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("network"),
/// AutoCreateSubnetworks: pulumi.Bool(true),
/// Mtu:                   pulumi.Int(8896),
/// })
/// if err != nil {
/// return err
/// }
/// // Create an IP address
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("address"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(24),
/// Network:      network.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a private connection
/// _default, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// Network: network.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = parallelstore.NewInstance(ctx, "instance", &parallelstore.InstanceArgs{
/// InstanceId:           pulumi.String("instance"),
/// Location:             pulumi.String("us-central1-a"),
/// Description:          pulumi.String("test instance"),
/// CapacityGib:          pulumi.String("12000"),
/// Network:              network.Name,
/// FileStripeLevel:      pulumi.String("FILE_STRIPE_LEVEL_MIN"),
/// DirectoryStripeLevel: pulumi.String("DIRECTORY_STRIPE_LEVEL_MIN"),
/// DeploymentType:       pulumi.String("SCRATCH"),
/// Labels: pulumi.StringMap{
/// "test": pulumi.String("value"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// _default,
/// }))
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.parallelstore.Instance;
/// import com.pulumi.gcp.parallelstore.InstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// .name("network")
/// .autoCreateSubnetworks(true)
/// .mtu(8896)
/// .build());
///
/// // Create an IP address
/// var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
/// .name("address")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(24)
/// .network(network.id())
/// .build());
///
/// // Create a private connection
/// var default_ = new Connection("default", ConnectionArgs.builder()
/// .network(network.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(privateIpAlloc.name())
/// .build());
///
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .instanceId("instance")
/// .location("us-central1-a")
/// .description("test instance")
/// .capacityGib("12000")
/// .network(network.name())
/// .fileStripeLevel("FILE_STRIPE_LEVEL_MIN")
/// .directoryStripeLevel("DIRECTORY_STRIPE_LEVEL_MIN")
/// .deploymentType("SCRATCH")
/// .labels(Map.of("test", "value"))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(default_)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:parallelstore:Instance
/// properties:
/// instanceId: instance
/// location: us-central1-a
/// description: test instance
/// capacityGib: 12000
/// network: ${network.name}
/// fileStripeLevel: FILE_STRIPE_LEVEL_MIN
/// directoryStripeLevel: DIRECTORY_STRIPE_LEVEL_MIN
/// deploymentType: SCRATCH
/// labels:
/// test: value
/// options:
/// dependsOn:
/// - ${default}
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: network
/// autoCreateSubnetworks: true
/// mtu: 8896
/// # Create an IP address
/// privateIpAlloc:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_alloc
/// properties:
/// name: address
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 24
/// network: ${network.id}
/// # Create a private connection
/// default:
/// type: gcp:servicenetworking:Connection
/// properties:
/// network: ${network.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${privateIpAlloc.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parallelstore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parallelstore/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parallelstore/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance12 extends CustomResource {
  /// Output only. List of access_points.
  /// Contains a list of IPv4 addresses used for client side configuration.
  late final Output<List<String>> accessPoints;

  /// Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  late final Output<String> capacityGib;

  /// The time when the instance was created.
  late final Output<String> createTime;

  /// The version of DAOS software running in the instance.
  late final Output<String> daosVersion;

  /// Parallelstore Instance deployment type.
  /// Possible values:
  /// DEPLOYMENT_TYPE_UNSPECIFIED
  /// SCRATCH
  /// PERSISTENT
  late final Output<String?> deploymentType;

  /// The description of the instance. 2048 characters or less.
  late final Output<String?> description;

  /// Stripe level for directories.
  /// MIN when directory has a small number of files.
  /// MAX when directory has a large number of files.
  /// Possible values:
  /// DIRECTORY_STRIPE_LEVEL_UNSPECIFIED
  /// DIRECTORY_STRIPE_LEVEL_MIN
  /// DIRECTORY_STRIPE_LEVEL_BALANCED
  /// DIRECTORY_STRIPE_LEVEL_MAX
  late final Output<String?> directoryStripeLevel;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Immutable. Contains the id of the allocated IP address
  /// range associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. This field is populated by the service
  /// and contains the value currently used by the service.
  late final Output<String> effectiveReservedIpRange;

  /// Stripe level for files.
  /// MIN better suited for small size files.
  /// MAX higher throughput performance for larger files.
  /// Possible values:
  /// FILE_STRIPE_LEVEL_UNSPECIFIED
  /// FILE_STRIPE_LEVEL_MIN
  /// FILE_STRIPE_LEVEL_BALANCED
  /// FILE_STRIPE_LEVEL_MAX
  late final Output<String?> fileStripeLevel;

  /// The logical name of the Parallelstore instance in the user project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project/ location
  late final Output<String> instanceId;

  /// Cloud Labels are a flexible and lightweight mechanism for
  /// organizing cloud resources into groups that reflect a customer's organizational
  /// needs and deployment strategies. Cloud Labels can be used to filter collections
  /// of resources. They can be used to control how resource metrics are aggregated.
  /// And they can be used as arguments to policy management rules (e.g. route, firewall,
  /// load balancing, etc.).
  /// * Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `a-z{0,62}`.
  /// * Label values must be between 0 and 63 characters long and must conform
  /// to the regular expression `[a-z0-9_-]{0,63}`.
  /// * No more than 64 labels can be associated with a given resource.
  /// See https://goo.gl/xmQnxf for more information on and examples of labels.
  /// If you plan to use labels in your own code, please note that additional
  /// characters may be allowed in the future. Therefore, you are advised to use
  /// an internal label representation, such as JSON, which doesn't rely upon
  /// specific characters being disallowed.  For example, representing labels
  /// as the string:  `name + "_" + value` would prove problematic if we were to
  /// allow `"_"` in a future release. "
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>. See documentation of `projectsId`.
  late final Output<String> location;

  /// Identifier. The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance_id}`
  late final Output<String> name;

  /// Immutable. The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc)
  /// to which the instance is connected.
  late final Output<String?> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Immutable. Contains the id of the allocated IP address range
  /// associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. If no range id is provided all ranges will
  /// be considered.
  late final Output<String?> reservedIpRange;

  /// The instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// FAILED
  /// UPGRADING
  late final Output<String> state;

  /// The time when the instance was updated.
  late final Output<String> updateTime;

  Instance12(
    String name, {
    InstanceArgs12? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:parallelstore/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPoints = Output.createUnknown<List<String>>();
    this.capacityGib = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.daosVersion = Output.createUnknown<String>();
    this.deploymentType = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.directoryStripeLevel = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.effectiveReservedIpRange = Output.createUnknown<String>();
    this.fileStripeLevel = Output.createUnknown<String?>();
    this.instanceId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reservedIpRange = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
