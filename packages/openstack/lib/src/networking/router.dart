import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_args.dart';
import 'router_external_fixed_ip.dart';
import 'router_vendor_options.dart';

/// Manages a V2 router resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const router1 = new openstack.networking.Router("router_1", {
///     name: "my_router",
///     adminStateUp: true,
///     externalNetworkId: "f67f0d72-0ddf-11e4-9d95-e1f29f417e2f",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// router1 = openstack.networking.Router("router_1",
///     name="my_router",
///     admin_state_up=True,
///     external_network_id="f67f0d72-0ddf-11e4-9d95-e1f29f417e2f")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var router1 = new OpenStack.Networking.Router("router_1", new()
///     {
///         Name = "my_router",
///         AdminStateUp = true,
///         ExternalNetworkId = "f67f0d72-0ddf-11e4-9d95-e1f29f417e2f",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networking.NewRouter(ctx, "router_1", &networking.RouterArgs{
/// 			Name:              pulumi.String("my_router"),
/// 			AdminStateUp:      pulumi.Bool(true),
/// 			ExternalNetworkId: pulumi.String("f67f0d72-0ddf-11e4-9d95-e1f29f417e2f"),
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
/// import com.pulumi.openstack.networking.Router;
/// import com.pulumi.openstack.networking.RouterArgs;
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
///         var router1 = new Router("router1", RouterArgs.builder()
///             .name("my_router")
///             .adminStateUp(true)
///             .externalNetworkId("f67f0d72-0ddf-11e4-9d95-e1f29f417e2f")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   router1:
///     type: openstack:networking:Router
///     name: router_1
///     properties:
///       name: my_router
///       adminStateUp: true
///       externalNetworkId: f67f0d72-0ddf-11e4-9d95-e1f29f417e2f
/// ```
///
///
/// ## Import
///
/// Routers can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/router:Router router_1 014395cd-89fc-4c9b-96b7-13d1ee79dad2
/// ```
class Router extends pulumi.CustomResource {
  /// Administrative up/down status for the router
  /// (must be "true" or "false" if provided). Changing this updates the
  /// `admin_state_up` of an existing router.
  late final pulumi.Output<bool> adminStateUp;
  /// The collection of tags assigned on the router, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// An availability zone is used to make
  /// network resources highly available. Used for resources with high availability
  /// so that they are scheduled on different availability zones. Changing this
  /// creates a new router.
  late final pulumi.Output<List<String>> availabilityZoneHints;
  /// Human-readable description for the router.
  late final pulumi.Output<String?> description;
  /// Indicates whether or not to create a
  /// distributed router. The default policy setting in Neutron restricts
  /// usage of this property to administrative users only.
  late final pulumi.Output<bool> distributed;
  /// Enable Source NAT for the router. Valid values are
  /// "true" or "false". An `external_network_id` has to be set in order to
  /// set this property. Changing this updates the `enable_snat` of the router.
  /// Setting this value **requires** an **ext-gw-mode** extension to be enabled
  /// in OpenStack Neutron.
  late final pulumi.Output<bool> enableSnat;
  /// An external fixed IP for the router. This
  /// can be repeated. The structure is described below. An `external_network_id`
  /// has to be set in order to set this property. Changing this updates the
  /// external fixed IPs of the router.
  late final pulumi.Output<List<RouterExternalFixedIp>> externalFixedIps;
  /// The network UUID of an external gateway
  /// for the router. A router with an external gateway is required if any
  /// compute instances or load balancers will be using floating IPs. Changing
  /// this updates the external gateway of the router.
  late final pulumi.Output<String> externalNetworkId;
  /// The QoS policy UUID that will be applied
  /// on the external gateway for the router. Changing this updates the external
  /// gateway of the router.
  late final pulumi.Output<String> externalQosPolicyId;
  /// A list of external subnet IDs to try over
  /// each to obtain a fixed IP for the router. If a subnet ID in a list has
  /// exhausted floating IP pool, the next subnet ID will be tried. This argument is
  /// used only during the router creation and allows to set only one external fixed
  /// IP. Conflicts with an `external_fixed_ip` argument.
  late final pulumi.Output<List<String>?> externalSubnetIds;
  /// A unique name for the router. Changing this
  /// updates the `name` of an existing router.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// router.
  late final pulumi.Output<String> region;
  /// A set of string tags for the router.
  late final pulumi.Output<List<String>?> tags;
  /// The owner of the floating IP. Required if admin wants
  /// to create a router for another tenant. Changing this creates a new router.
  late final pulumi.Output<String> tenantId;
  /// Map of additional driver-specific options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;
  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  late final pulumi.Output<RouterVendorOptions?> vendorOptions;

  /// Creates a new [Router].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Router]. {@macro pulumi_networking_router_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Router(
    String name, {
    RouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/router:Router',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool>('adminStateUp');
    this.allTags = registerOutput<List<String>>('allTags');
    this.availabilityZoneHints = registerOutput<List<String>>('availabilityZoneHints');
    this.description = registerOutput<String?>('description');
    this.distributed = registerOutput<bool>('distributed');
    this.enableSnat = registerOutput<bool>('enableSnat');
    this.externalFixedIps = registerOutput<List<RouterExternalFixedIp>>('externalFixedIps');
    this.externalNetworkId = registerOutput<String>('externalNetworkId');
    this.externalQosPolicyId = registerOutput<String>('externalQosPolicyId');
    this.externalSubnetIds = registerOutput<List<String>?>('externalSubnetIds');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    this.vendorOptions = registerOutput<RouterVendorOptions?>('vendorOptions');
  }
}
