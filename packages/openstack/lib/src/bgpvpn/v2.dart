import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_args.dart';

/// Manages a V2 BGP VPN service resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const bgpvpn1 = new openstack.bgpvpn.V2("bgpvpn_1", {
///     name: "bgpvpn1",
///     routeDistinguishers: ["64512:1"],
///     routeTargets: ["64512:1"],
///     importTargets: ["64512:2"],
///     exportTargets: ["64512:3"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// bgpvpn1 = openstack.bgpvpn.V2("bgpvpn_1",
///     name="bgpvpn1",
///     route_distinguishers=["64512:1"],
///     route_targets=["64512:1"],
///     import_targets=["64512:2"],
///     export_targets=["64512:3"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bgpvpn1 = new OpenStack.BGPVPN.V2("bgpvpn_1", new()
///     {
///         Name = "bgpvpn1",
///         RouteDistinguishers = new[]
///         {
///             "64512:1",
///         },
///         RouteTargets = new[]
///         {
///             "64512:1",
///         },
///         ImportTargets = new[]
///         {
///             "64512:2",
///         },
///         ExportTargets = new[]
///         {
///             "64512:3",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/bgpvpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bgpvpn.NewV2(ctx, "bgpvpn_1", &bgpvpn.V2Args{
/// 			Name: pulumi.String("bgpvpn1"),
/// 			RouteDistinguishers: pulumi.StringArray{
/// 				pulumi.String("64512:1"),
/// 			},
/// 			RouteTargets: pulumi.StringArray{
/// 				pulumi.String("64512:1"),
/// 			},
/// 			ImportTargets: pulumi.StringArray{
/// 				pulumi.String("64512:2"),
/// 			},
/// 			ExportTargets: pulumi.StringArray{
/// 				pulumi.String("64512:3"),
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
/// import com.pulumi.openstack.bgpvpn.V2;
/// import com.pulumi.openstack.bgpvpn.V2Args;
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
///         var bgpvpn1 = new V2("bgpvpn1", V2Args.builder()
///             .name("bgpvpn1")
///             .routeDistinguishers("64512:1")
///             .routeTargets("64512:1")
///             .importTargets("64512:2")
///             .exportTargets("64512:3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bgpvpn1:
///     type: openstack:bgpvpn:V2
///     name: bgpvpn_1
///     properties:
///       name: bgpvpn1
///       routeDistinguishers:
///         - 64512:1
///       routeTargets:
///         - 64512:1
///       importTargets:
///         - 64512:2
///       exportTargets:
///         - 64512:3
/// ```
///
///
/// ## Import
///
/// BGP VPNs can be imported using the `id`, e.g.
///
/// hcl
///
/// ```sh
/// $ pulumi import openstack:bgpvpn/v2:V2 bgpvpn_1 1eec2c66-6be2-4305-af3f-354c9b81f18c
/// ```
class V2 extends pulumi.CustomResource {
  /// A list of additional Route Targets that will be
  /// used for export.
  late final pulumi.Output<List<String>> exportTargets;
  /// A list of additional Route Targets that will be
  /// imported.
  late final pulumi.Output<List<String>> importTargets;
  /// The default BGP LOCAL\_PREF of routes that will be
  /// advertised to the BGP VPN, unless overridden per-route.
  late final pulumi.Output<int?> localPref;
  /// The name of the BGP VPN. Changing this updates the name of
  /// the existing BGP VPN.
  late final pulumi.Output<String> name;
  /// A list of network IDs that are associated with the BGP VPN.
  late final pulumi.Output<List<String>> networks;
  /// A list of port IDs that are associated with the BGP VPN.
  late final pulumi.Output<List<String>> ports;
  /// The ID of the project that owns the BGPVPN. Only
  /// administrative and users with `advsvc` role can specify a project ID other
  /// than their own. Changing this creates a new BGP VPN.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// BGP VPN.
  late final pulumi.Output<String> region;
  /// A list of route distinguisher strings. If
  /// specified, one of these RDs will be used to advertise VPN routes.
  late final pulumi.Output<List<String>> routeDistinguishers;
  /// A list of Route Targets that will be both
  /// imported and used for export.
  late final pulumi.Output<List<String>> routeTargets;
  /// A list of router IDs that are associated with the BGP VPN.
  late final pulumi.Output<List<String>> routers;
  /// Indicates whether the BGP VPN is shared across projects.
  late final pulumi.Output<bool> shared;
  /// The type of the BGP VPN (either `l2` or `l3`). Changing this
  /// creates a new BGP VPN. Defaults to `l3`.
  late final pulumi.Output<String> type;
  /// The globally-assigned VXLAN VNI for the BGP VPN. Changing
  /// this creates a new BGP VPN.
  late final pulumi.Output<int?> vni;

  /// Creates a new [V2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2]. {@macro pulumi_bgpvpn_v2_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2(
    String name, {
    V2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:bgpvpn/v2:V2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.exportTargets = registerOutput<List<String>>('exportTargets');
    this.importTargets = registerOutput<List<String>>('importTargets');
    this.localPref = registerOutput<int?>('localPref');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<String>>('networks');
    this.ports = registerOutput<List<String>>('ports');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.routeDistinguishers = registerOutput<List<String>>('routeDistinguishers');
    this.routeTargets = registerOutput<List<String>>('routeTargets');
    this.routers = registerOutput<List<String>>('routers');
    this.shared = registerOutput<bool>('shared');
    this.type = registerOutput<String>('type');
    this.vni = registerOutput<int?>('vni');
  }
}
