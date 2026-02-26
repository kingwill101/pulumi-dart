import 'package:pulumi/pulumi.dart';
import '../router_route_policy_term/router_route_policy_term.dart';
import 'router_route_policy_args.dart';

/// A route policy created in a router
///
///
/// To get more information about RouterRoutePolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Route Policy Export
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
/// name: "my-subnetwork",
/// network: net.id,
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// });
/// const router = new gcp.compute.Router("router", {
/// name: "my-router",
/// region: subnet.region,
/// network: net.id,
/// });
/// const rp_export = new gcp.compute.RouterRoutePolicy("rp-export", {
/// router: router.name,
/// region: router.region,
/// name: "my-rp1",
/// type: "ROUTE_POLICY_TYPE_EXPORT",
/// terms: [{
/// priority: 1,
/// match: {
/// expression: "destination == '10.0.0.0/12'",
/// },
/// actions: [{
/// expression: "accept()",
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
/// name="my-network",
/// auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
/// name="my-subnetwork",
/// network=net.id,
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1")
/// router = gcp.compute.Router("router",
/// name="my-router",
/// region=subnet.region,
/// network=net.id)
/// rp_export = gcp.compute.RouterRoutePolicy("rp-export",
/// router=router.name,
/// region=router.region,
/// name="my-rp1",
/// type="ROUTE_POLICY_TYPE_EXPORT",
/// terms=[{
/// "priority": 1,
/// "match": {
/// "expression": "destination == '10.0.0.0/12'",
/// },
/// "actions": [{
/// "expression": "accept()",
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
/// var net = new Gcp.Compute.Network("net", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnet = new Gcp.Compute.Subnetwork("subnet", new()
/// {
/// Name = "my-subnetwork",
/// Network = net.Id,
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// });
///
/// var router = new Gcp.Compute.Router("router", new()
/// {
/// Name = "my-router",
/// Region = subnet.Region,
/// Network = net.Id,
/// });
///
/// var rp_export = new Gcp.Compute.RouterRoutePolicy("rp-export", new()
/// {
/// Router = router.Name,
/// Region = router.Region,
/// Name = "my-rp1",
/// Type = "ROUTE_POLICY_TYPE_EXPORT",
/// Terms = new[]
/// {
/// new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
/// {
/// Priority = 1,
/// Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
/// {
/// Expression = "destination == '10.0.0.0/12'",
/// },
/// Actions = new[]
/// {
/// new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
/// {
/// Expression = "accept()",
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
/// net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("my-subnetwork"),
/// Network:     net.ID(),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// Name:    pulumi.String("my-router"),
/// Region:  subnet.Region,
/// Network: net.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRouterRoutePolicy(ctx, "rp-export", &compute.RouterRoutePolicyArgs{
/// Router: router.Name,
/// Region: router.Region,
/// Name:   pulumi.String("my-rp1"),
/// Type:   pulumi.String("ROUTE_POLICY_TYPE_EXPORT"),
/// Terms: compute.RouterRoutePolicyTermArray{
/// &compute.RouterRoutePolicyTermArgs{
/// Priority: pulumi.Int(1),
/// Match: &compute.RouterRoutePolicyTermMatchArgs{
/// Expression: pulumi.String("destination == '10.0.0.0/12'"),
/// },
/// Actions: compute.RouterRoutePolicyTermActionArray{
/// &compute.RouterRoutePolicyTermActionArgs{
/// Expression: pulumi.String("accept()"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.RouterRoutePolicy;
/// import com.pulumi.gcp.compute.RouterRoutePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermMatchArgs;
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
/// var net = new Network("net", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .network(net.id())
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .build());
///
/// var router = new Router("router", RouterArgs.builder()
/// .name("my-router")
/// .region(subnet.region())
/// .network(net.id())
/// .build());
///
/// var rp_export = new RouterRoutePolicy("rp-export", RouterRoutePolicyArgs.builder()
/// .router(router.name())
/// .region(router.region())
/// .name("my-rp1")
/// .type("ROUTE_POLICY_TYPE_EXPORT")
/// .terms(RouterRoutePolicyTermArgs.builder()
/// .priority(1)
/// .match(RouterRoutePolicyTermMatchArgs.builder()
/// .expression("destination == '10.0.0.0/12'")
/// .build())
/// .actions(RouterRoutePolicyTermActionArgs.builder()
/// .expression("accept()")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// net:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// subnet:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: my-subnetwork
/// network: ${net.id}
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// router:
/// type: gcp:compute:Router
/// properties:
/// name: my-router
/// region: ${subnet.region}
/// network: ${net.id}
/// rp-export:
/// type: gcp:compute:RouterRoutePolicy
/// properties:
/// router: ${router.name}
/// region: ${router.region}
/// name: my-rp1
/// type: ROUTE_POLICY_TYPE_EXPORT
/// terms:
/// - priority: 1
/// match:
/// expression: destination == '10.0.0.0/12'
/// actions:
/// - expression: accept()
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Router Route Policy Import
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
/// name: "my-subnetwork",
/// network: net.id,
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// });
/// const router = new gcp.compute.Router("router", {
/// name: "my-router",
/// region: subnet.region,
/// network: net.id,
/// });
/// const rp_import = new gcp.compute.RouterRoutePolicy("rp-import", {
/// name: "my-rp2",
/// router: router.name,
/// region: router.region,
/// type: "ROUTE_POLICY_TYPE_IMPORT",
/// terms: [{
/// priority: 2,
/// match: {
/// expression: "destination == '10.0.0.0/12'",
/// },
/// actions: [{
/// expression: "accept()",
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
/// name="my-network",
/// auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
/// name="my-subnetwork",
/// network=net.id,
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1")
/// router = gcp.compute.Router("router",
/// name="my-router",
/// region=subnet.region,
/// network=net.id)
/// rp_import = gcp.compute.RouterRoutePolicy("rp-import",
/// name="my-rp2",
/// router=router.name,
/// region=router.region,
/// type="ROUTE_POLICY_TYPE_IMPORT",
/// terms=[{
/// "priority": 2,
/// "match": {
/// "expression": "destination == '10.0.0.0/12'",
/// },
/// "actions": [{
/// "expression": "accept()",
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
/// var net = new Gcp.Compute.Network("net", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnet = new Gcp.Compute.Subnetwork("subnet", new()
/// {
/// Name = "my-subnetwork",
/// Network = net.Id,
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// });
///
/// var router = new Gcp.Compute.Router("router", new()
/// {
/// Name = "my-router",
/// Region = subnet.Region,
/// Network = net.Id,
/// });
///
/// var rp_import = new Gcp.Compute.RouterRoutePolicy("rp-import", new()
/// {
/// Name = "my-rp2",
/// Router = router.Name,
/// Region = router.Region,
/// Type = "ROUTE_POLICY_TYPE_IMPORT",
/// Terms = new[]
/// {
/// new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
/// {
/// Priority = 2,
/// Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
/// {
/// Expression = "destination == '10.0.0.0/12'",
/// },
/// Actions = new[]
/// {
/// new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
/// {
/// Expression = "accept()",
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
/// net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// Name:        pulumi.String("my-subnetwork"),
/// Network:     net.ID(),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// Name:    pulumi.String("my-router"),
/// Region:  subnet.Region,
/// Network: net.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRouterRoutePolicy(ctx, "rp-import", &compute.RouterRoutePolicyArgs{
/// Name:   pulumi.String("my-rp2"),
/// Router: router.Name,
/// Region: router.Region,
/// Type:   pulumi.String("ROUTE_POLICY_TYPE_IMPORT"),
/// Terms: compute.RouterRoutePolicyTermArray{
/// &compute.RouterRoutePolicyTermArgs{
/// Priority: pulumi.Int(2),
/// Match: &compute.RouterRoutePolicyTermMatchArgs{
/// Expression: pulumi.String("destination == '10.0.0.0/12'"),
/// },
/// Actions: compute.RouterRoutePolicyTermActionArray{
/// &compute.RouterRoutePolicyTermActionArgs{
/// Expression: pulumi.String("accept()"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.RouterRoutePolicy;
/// import com.pulumi.gcp.compute.RouterRoutePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermMatchArgs;
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
/// var net = new Network("net", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .network(net.id())
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .build());
///
/// var router = new Router("router", RouterArgs.builder()
/// .name("my-router")
/// .region(subnet.region())
/// .network(net.id())
/// .build());
///
/// var rp_import = new RouterRoutePolicy("rp-import", RouterRoutePolicyArgs.builder()
/// .name("my-rp2")
/// .router(router.name())
/// .region(router.region())
/// .type("ROUTE_POLICY_TYPE_IMPORT")
/// .terms(RouterRoutePolicyTermArgs.builder()
/// .priority(2)
/// .match(RouterRoutePolicyTermMatchArgs.builder()
/// .expression("destination == '10.0.0.0/12'")
/// .build())
/// .actions(RouterRoutePolicyTermActionArgs.builder()
/// .expression("accept()")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// net:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// subnet:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: my-subnetwork
/// network: ${net.id}
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// router:
/// type: gcp:compute:Router
/// properties:
/// name: my-router
/// region: ${subnet.region}
/// network: ${net.id}
/// rp-import:
/// type: gcp:compute:RouterRoutePolicy
/// properties:
/// name: my-rp2
/// router: ${router.name}
/// region: ${router.region}
/// type: ROUTE_POLICY_TYPE_IMPORT
/// terms:
/// - priority: 2
/// match:
/// expression: destination == '10.0.0.0/12'
/// actions:
/// - expression: accept()
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RouterRoutePolicy can be imported using any of these accepted formats:
///
/// * `{{project}}/{{region}}/{{router}}/routePolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// * `{{router}}/{{name}}`
///
/// When using the `pulumi import` command, RouterRoutePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{project}}/{{region}}/{{router}}/routePolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{project}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{router}}/{{name}}
/// ```
class RouterRoutePolicy extends CustomResource {
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> fingerprint;

  /// Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the router and NAT reside.
  late final Output<String> region;

  /// The name of the Cloud Router in which this route policy will be configured.
  late final Output<String> router;

  /// List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// Structure is documented below.
  late final Output<List<RouterRoutePolicyTerm>> terms;

  /// This is policy's type, which is one of IMPORT or EXPORT
  /// Possible values are: `ROUTE_POLICY_TYPE_IMPORT`, `ROUTE_POLICY_TYPE_EXPORT`.
  late final Output<String?> type;

  RouterRoutePolicy(
    String name, {
    RouterRoutePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerRoutePolicy:RouterRoutePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.fingerprint = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.router = Output.createUnknown<String>();
    this.terms = Output.createUnknown<List<RouterRoutePolicyTerm>>();
    this.type = Output.createUnknown<String?>();
  }
}
