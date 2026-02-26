import 'package:pulumi/pulumi.dart';
import '../wire_group_endpoint/wire_group_endpoint.dart';
import '../wire_group_topology/wire_group_topology.dart';
import '../wire_group_wire/wire_group_wire.dart';
import '../wire_group_wire_group_properties/wire_group_wire_group_properties.dart';
import '../wire_group_wire_properties/wire_group_wire_properties.dart';
import 'wire_group_args.dart';

/// The WireGroup resource represents a group of redundant wires between interconnects in two different metros. Each WireGroup belongs to a CrossSiteNetwork. A wire group defines endpoints and the wires which exist between them.
///
///
/// To get more information about WireGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/wireGroups)
/// * How-to Guides
/// * [Create a WireGroup](https://cloud.google.com/network-connectivity/docs/interconnect/how-to/cross-site/modify-network#add-wire-group)
///
/// ## Example Usage
///
/// ### Compute Wire Group Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_cross_site_network = new gcp.compute.CrossSiteNetwork("example-cross-site-network", {
/// name: "test-cross-site-network",
/// description: "Example cross site network",
/// });
/// const example_test_wire_group = new gcp.compute.WireGroup("example-test-wire-group", {
/// name: "test-wire-group",
/// description: "Example Wire Group",
/// crossSiteNetwork: "test-cross-site-network",
/// wireProperties: {
/// bandwidthUnmetered: 10,
/// faultResponse: "NONE",
/// bandwidthAllocation: "ALLOCATE_PER_WIRE",
/// },
/// adminEnabled: true,
/// }, {
/// dependsOn: [example_cross_site_network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_cross_site_network = gcp.compute.CrossSiteNetwork("example-cross-site-network",
/// name="test-cross-site-network",
/// description="Example cross site network")
/// example_test_wire_group = gcp.compute.WireGroup("example-test-wire-group",
/// name="test-wire-group",
/// description="Example Wire Group",
/// cross_site_network="test-cross-site-network",
/// wire_properties={
/// "bandwidth_unmetered": 10,
/// "fault_response": "NONE",
/// "bandwidth_allocation": "ALLOCATE_PER_WIRE",
/// },
/// admin_enabled=True,
/// opts = pulumi.ResourceOptions(depends_on=[example_cross_site_network]))
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
/// var example_cross_site_network = new Gcp.Compute.CrossSiteNetwork("example-cross-site-network", new()
/// {
/// Name = "test-cross-site-network",
/// Description = "Example cross site network",
/// });
///
/// var example_test_wire_group = new Gcp.Compute.WireGroup("example-test-wire-group", new()
/// {
/// Name = "test-wire-group",
/// Description = "Example Wire Group",
/// CrossSiteNetwork = "test-cross-site-network",
/// WireProperties = new Gcp.Compute.Inputs.WireGroupWirePropertiesArgs
/// {
/// BandwidthUnmetered = 10,
/// FaultResponse = "NONE",
/// BandwidthAllocation = "ALLOCATE_PER_WIRE",
/// },
/// AdminEnabled = true,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example_cross_site_network,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example_cross_site_network, err := compute.NewCrossSiteNetwork(ctx, "example-cross-site-network", &compute.CrossSiteNetworkArgs{
/// Name:        pulumi.String("test-cross-site-network"),
/// Description: pulumi.String("Example cross site network"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewWireGroup(ctx, "example-test-wire-group", &compute.WireGroupArgs{
/// Name:             pulumi.String("test-wire-group"),
/// Description:      pulumi.String("Example Wire Group"),
/// CrossSiteNetwork: pulumi.String("test-cross-site-network"),
/// WireProperties: &compute.WireGroupWirePropertiesArgs{
/// BandwidthUnmetered:  pulumi.Int(10),
/// FaultResponse:       pulumi.String("NONE"),
/// BandwidthAllocation: pulumi.String("ALLOCATE_PER_WIRE"),
/// },
/// AdminEnabled: pulumi.Bool(true),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example_cross_site_network,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.CrossSiteNetwork;
/// import com.pulumi.gcp.compute.CrossSiteNetworkArgs;
/// import com.pulumi.gcp.compute.WireGroup;
/// import com.pulumi.gcp.compute.WireGroupArgs;
/// import com.pulumi.gcp.compute.inputs.WireGroupWirePropertiesArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var example_cross_site_network = new CrossSiteNetwork("example-cross-site-network", CrossSiteNetworkArgs.builder()
/// .name("test-cross-site-network")
/// .description("Example cross site network")
/// .build());
///
/// var example_test_wire_group = new WireGroup("example-test-wire-group", WireGroupArgs.builder()
/// .name("test-wire-group")
/// .description("Example Wire Group")
/// .crossSiteNetwork("test-cross-site-network")
/// .wireProperties(WireGroupWirePropertiesArgs.builder()
/// .bandwidthUnmetered(10)
/// .faultResponse("NONE")
/// .bandwidthAllocation("ALLOCATE_PER_WIRE")
/// .build())
/// .adminEnabled(true)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example_cross_site_network)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example-cross-site-network:
/// type: gcp:compute:CrossSiteNetwork
/// properties:
/// name: test-cross-site-network
/// description: Example cross site network
/// example-test-wire-group:
/// type: gcp:compute:WireGroup
/// properties:
/// name: test-wire-group
/// description: Example Wire Group
/// crossSiteNetwork: test-cross-site-network
/// wireProperties:
/// bandwidthUnmetered: 10
/// faultResponse: NONE
/// bandwidthAllocation: ALLOCATE_PER_WIRE
/// adminEnabled: true
/// options:
/// dependsOn:
/// - ${["example-cross-site-network"]}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Compute Wire Group Basic Beta
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_cross_site_network = new gcp.compute.CrossSiteNetwork("example-cross-site-network", {
/// name: "test-cross-site-network-beta",
/// description: "Example cross site network",
/// });
/// const example_test_wire_group_beta = new gcp.compute.WireGroup("example-test-wire-group-beta", {
/// name: "test-wire-group-beta",
/// description: "Example Wire Group Beta",
/// crossSiteNetwork: "test-cross-site-network-beta",
/// wireProperties: {
/// bandwidthUnmetered: 10,
/// faultResponse: "NONE",
/// bandwidthAllocation: "ALLOCATE_PER_WIRE",
/// },
/// wireGroupProperties: {
/// type: "WIRE",
/// },
/// adminEnabled: true,
/// }, {
/// dependsOn: [example_cross_site_network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_cross_site_network = gcp.compute.CrossSiteNetwork("example-cross-site-network",
/// name="test-cross-site-network-beta",
/// description="Example cross site network")
/// example_test_wire_group_beta = gcp.compute.WireGroup("example-test-wire-group-beta",
/// name="test-wire-group-beta",
/// description="Example Wire Group Beta",
/// cross_site_network="test-cross-site-network-beta",
/// wire_properties={
/// "bandwidth_unmetered": 10,
/// "fault_response": "NONE",
/// "bandwidth_allocation": "ALLOCATE_PER_WIRE",
/// },
/// wire_group_properties={
/// "type": "WIRE",
/// },
/// admin_enabled=True,
/// opts = pulumi.ResourceOptions(depends_on=[example_cross_site_network]))
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
/// var example_cross_site_network = new Gcp.Compute.CrossSiteNetwork("example-cross-site-network", new()
/// {
/// Name = "test-cross-site-network-beta",
/// Description = "Example cross site network",
/// });
///
/// var example_test_wire_group_beta = new Gcp.Compute.WireGroup("example-test-wire-group-beta", new()
/// {
/// Name = "test-wire-group-beta",
/// Description = "Example Wire Group Beta",
/// CrossSiteNetwork = "test-cross-site-network-beta",
/// WireProperties = new Gcp.Compute.Inputs.WireGroupWirePropertiesArgs
/// {
/// BandwidthUnmetered = 10,
/// FaultResponse = "NONE",
/// BandwidthAllocation = "ALLOCATE_PER_WIRE",
/// },
/// WireGroupProperties = new Gcp.Compute.Inputs.WireGroupWireGroupPropertiesArgs
/// {
/// Type = "WIRE",
/// },
/// AdminEnabled = true,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example_cross_site_network,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example_cross_site_network, err := compute.NewCrossSiteNetwork(ctx, "example-cross-site-network", &compute.CrossSiteNetworkArgs{
/// Name:        pulumi.String("test-cross-site-network-beta"),
/// Description: pulumi.String("Example cross site network"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewWireGroup(ctx, "example-test-wire-group-beta", &compute.WireGroupArgs{
/// Name:             pulumi.String("test-wire-group-beta"),
/// Description:      pulumi.String("Example Wire Group Beta"),
/// CrossSiteNetwork: pulumi.String("test-cross-site-network-beta"),
/// WireProperties: &compute.WireGroupWirePropertiesArgs{
/// BandwidthUnmetered:  pulumi.Int(10),
/// FaultResponse:       pulumi.String("NONE"),
/// BandwidthAllocation: pulumi.String("ALLOCATE_PER_WIRE"),
/// },
/// WireGroupProperties: &compute.WireGroupWireGroupPropertiesArgs{
/// Type: pulumi.String("WIRE"),
/// },
/// AdminEnabled: pulumi.Bool(true),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example_cross_site_network,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.CrossSiteNetwork;
/// import com.pulumi.gcp.compute.CrossSiteNetworkArgs;
/// import com.pulumi.gcp.compute.WireGroup;
/// import com.pulumi.gcp.compute.WireGroupArgs;
/// import com.pulumi.gcp.compute.inputs.WireGroupWirePropertiesArgs;
/// import com.pulumi.gcp.compute.inputs.WireGroupWireGroupPropertiesArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var example_cross_site_network = new CrossSiteNetwork("example-cross-site-network", CrossSiteNetworkArgs.builder()
/// .name("test-cross-site-network-beta")
/// .description("Example cross site network")
/// .build());
///
/// var example_test_wire_group_beta = new WireGroup("example-test-wire-group-beta", WireGroupArgs.builder()
/// .name("test-wire-group-beta")
/// .description("Example Wire Group Beta")
/// .crossSiteNetwork("test-cross-site-network-beta")
/// .wireProperties(WireGroupWirePropertiesArgs.builder()
/// .bandwidthUnmetered(10)
/// .faultResponse("NONE")
/// .bandwidthAllocation("ALLOCATE_PER_WIRE")
/// .build())
/// .wireGroupProperties(WireGroupWireGroupPropertiesArgs.builder()
/// .type("WIRE")
/// .build())
/// .adminEnabled(true)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example_cross_site_network)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example-cross-site-network:
/// type: gcp:compute:CrossSiteNetwork
/// properties:
/// name: test-cross-site-network-beta
/// description: Example cross site network
/// example-test-wire-group-beta:
/// type: gcp:compute:WireGroup
/// properties:
/// name: test-wire-group-beta
/// description: Example Wire Group Beta
/// crossSiteNetwork: test-cross-site-network-beta
/// wireProperties:
/// bandwidthUnmetered: 10
/// faultResponse: NONE
/// bandwidthAllocation: ALLOCATE_PER_WIRE
/// wireGroupProperties:
/// type: WIRE
/// adminEnabled: true
/// options:
/// dependsOn:
/// - ${["example-cross-site-network"]}
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
/// WireGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/crossSiteNetworks/{{cross_site_network}}/wireGroups/{{name}}`
///
/// * `{{project}}/{{cross_site_network}}/{{name}}`
///
/// * `{{cross_site_network}}/{{name}}`
///
/// When using the `pulumi import` command, WireGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default projects/{{project}}/global/crossSiteNetworks/{{cross_site_network}}/wireGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default {{project}}/{{cross_site_network}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/wireGroup:WireGroup default {{cross_site_network}}/{{name}}
/// ```
class WireGroup extends CustomResource {
  /// Indicates whether the wire group is administratively enabled.
  late final Output<bool?> adminEnabled;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Required cross site network to which wire group belongs.
  late final Output<String> crossSiteNetwork;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  late final Output<List<WireGroupEndpoint>?> endpoints;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Topology details for the wire group configuration.
  /// Structure is documented below.
  late final Output<List<WireGroupTopology>> topologies;

  /// Properties specific to the wire group.
  /// Structure is documented below.
  late final Output<WireGroupWireGroupProperties?> wireGroupProperties;

  /// Default properties for wires within the group.
  /// Structure is documented below.
  late final Output<WireGroupWireProperties?> wireProperties;

  /// The single/redundant wire(s) managed by the wire group.
  /// Structure is documented below.
  late final Output<List<WireGroupWire>> wires;

  WireGroup(
    String name, {
    WireGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/wireGroup:WireGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminEnabled = Output.createUnknown<bool?>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.crossSiteNetwork = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.endpoints = Output.createUnknown<List<WireGroupEndpoint>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.topologies = Output.createUnknown<List<WireGroupTopology>>();
    this.wireGroupProperties =
        Output.createUnknown<WireGroupWireGroupProperties?>();
    this.wireProperties = Output.createUnknown<WireGroupWireProperties?>();
    this.wires = Output.createUnknown<List<WireGroupWire>>();
  }
}
