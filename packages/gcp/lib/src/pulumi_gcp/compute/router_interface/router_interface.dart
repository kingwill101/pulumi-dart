import 'package:pulumi/pulumi.dart';
import 'router_interface_args.dart';

/// Manages a Cloud Router interface. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/cloudrouter)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/routers).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RouterInterface("foobar", {
/// name: "interface-1",
/// router: "router-1",
/// region: "us-central1",
/// ipRange: "169.254.1.1/30",
/// vpnTunnel: "tunnel-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RouterInterface("foobar",
/// name="interface-1",
/// router="router-1",
/// region="us-central1",
/// ip_range="169.254.1.1/30",
/// vpn_tunnel="tunnel-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foobar = new Gcp.Compute.RouterInterface("foobar", new()
/// {
/// Name = "interface-1",
/// Router = "router-1",
/// Region = "us-central1",
/// IpRange = "169.254.1.1/30",
/// VpnTunnel = "tunnel-1",
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
/// _, err := compute.NewRouterInterface(ctx, "foobar", &compute.RouterInterfaceArgs{
/// Name:      pulumi.String("interface-1"),
/// Router:    pulumi.String("router-1"),
/// Region:    pulumi.String("us-central1"),
/// IpRange:   pulumi.String("169.254.1.1/30"),
/// VpnTunnel: pulumi.String("tunnel-1"),
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
/// import com.pulumi.gcp.compute.RouterInterface;
/// import com.pulumi.gcp.compute.RouterInterfaceArgs;
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
/// var foobar = new RouterInterface("foobar", RouterInterfaceArgs.builder()
/// .name("interface-1")
/// .router("router-1")
/// .region("us-central1")
/// .ipRange("169.254.1.1/30")
/// .vpnTunnel("tunnel-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: gcp:compute:RouterInterface
/// properties:
/// name: interface-1
/// router: router-1
/// region: us-central1
/// ipRange: 169.254.1.1/30
/// vpnTunnel: tunnel-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Router interfaces can be imported using the `project` (optional), `region`, `router`, and `name`, e.g.
///
/// * `{{project_id}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// When using the `pulumi import` command, router interfaces can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerInterface:RouterInterface default {{project_id}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerInterface:RouterInterface default {{region}}/{{router}}/{{name}}
/// ```
class RouterInterface extends CustomResource {
  /// The name or resource link to the
  /// VLAN interconnect for this interface. Changing this forces a new interface to
  /// be created. Only one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> can be specified.
  late final Output<String?> interconnectAttachment;

  /// IP address and range of the interface. The IP range must be
  /// in the RFC3927 link-local IP space. Changing this forces a new interface to be created.
  late final Output<String> ipRange;

  /// IP version of this interface. Can be either IPV4 or IPV6.
  late final Output<String> ipVersion;

  /// A unique name for the interface, required by GCE. Changing
  /// this forces a new interface to be created.
  late final Output<String> name;

  /// The regional private internal IP address that is used
  /// to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created.
  late final Output<String?> privateIpAddress;

  /// The ID of the project in which this interface's routerbelongs.
  /// If it is not provided, the provider project is used. Changing this forces a new interface to be created.
  late final Output<String> project;

  /// The name of the interface that is redundant to
  /// this interface. Changing this forces a new interface to be created.
  late final Output<String> redundantInterface;

  /// The region this interface's router sits in.
  /// If not specified, the project region will be used. Changing this forces a new interface to be created.
  late final Output<String> region;

  /// The name of the router this interface will be attached to.
  /// Changing this forces a new interface to be created.
  ///
  /// In addition to the above required fields, a router interface must have specified either <span pulumi-lang-nodejs="`ipRange`" pulumi-lang-dotnet="`IpRange`" pulumi-lang-go="`ipRange`" pulumi-lang-python="`ip_range`" pulumi-lang-yaml="`ipRange`" pulumi-lang-java="`ipRange`">`ip_range`</span> or exactly one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span>, or both.
  ///
  /// - - -
  late final Output<String> router;

  /// The URI of the subnetwork resource that this interface
  /// belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here. Changing this forces a new interface to be created. Only one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> can be specified.
  late final Output<String?> subnetwork;

  /// The name or resource link to the VPN tunnel this
  /// interface will be linked to. Changing this forces a new interface to be created. Only
  /// one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> can be specified.
  late final Output<String?> vpnTunnel;

  RouterInterface(
    String name, {
    RouterInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerInterface:RouterInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.interconnectAttachment =
        registerOutput<String?>('interconnectAttachment');
    this.ipRange = registerOutput<String>('ipRange');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.name = registerOutput<String>('name');
    this.privateIpAddress = registerOutput<String?>('privateIpAddress');
    this.project = registerOutput<String>('project');
    this.redundantInterface = registerOutput<String>('redundantInterface');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String>('router');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.vpnTunnel = registerOutput<String?>('vpnTunnel');
  }
}
