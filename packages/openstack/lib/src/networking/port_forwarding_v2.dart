import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_forwarding_v2_args.dart';

/// Manages a V2 portforwarding resource within OpenStack.
///
/// ## Example Usage
///
/// ### Simple portforwarding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const pf1 = new openstack.networking.PortForwardingV2("pf_1", {
///     floatingipId: "7a52eb59-7d47-415d-a884-046666a6fbae",
///     externalPort: 7233,
///     internalPort: 25,
///     internalPortId: "b930d7f6-ceb7-40a0-8b81-a425dd994ccf",
///     protocol: "tcp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// pf1 = openstack.networking.PortForwardingV2("pf_1",
///     floatingip_id="7a52eb59-7d47-415d-a884-046666a6fbae",
///     external_port=7233,
///     internal_port=25,
///     internal_port_id="b930d7f6-ceb7-40a0-8b81-a425dd994ccf",
///     protocol="tcp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pf1 = new OpenStack.Networking.PortForwardingV2("pf_1", new()
///     {
///         FloatingipId = "7a52eb59-7d47-415d-a884-046666a6fbae",
///         ExternalPort = 7233,
///         InternalPort = 25,
///         InternalPortId = "b930d7f6-ceb7-40a0-8b81-a425dd994ccf",
///         Protocol = "tcp",
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
/// 		_, err := networking.NewPortForwardingV2(ctx, "pf_1", &networking.PortForwardingV2Args{
/// 			FloatingipId:   pulumi.String("7a52eb59-7d47-415d-a884-046666a6fbae"),
/// 			ExternalPort:   pulumi.Int(7233),
/// 			InternalPort:   pulumi.Int(25),
/// 			InternalPortId: pulumi.String("b930d7f6-ceb7-40a0-8b81-a425dd994ccf"),
/// 			Protocol:       pulumi.String("tcp"),
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
/// import com.pulumi.openstack.networking.PortForwardingV2;
/// import com.pulumi.openstack.networking.PortForwardingV2Args;
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
///         var pf1 = new PortForwardingV2("pf1", PortForwardingV2Args.builder()
///             .floatingipId("7a52eb59-7d47-415d-a884-046666a6fbae")
///             .externalPort(7233)
///             .internalPort(25)
///             .internalPortId("b930d7f6-ceb7-40a0-8b81-a425dd994ccf")
///             .protocol("tcp")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pf1:
///     type: openstack:networking:PortForwardingV2
///     name: pf_1
///     properties:
///       floatingipId: 7a52eb59-7d47-415d-a884-046666a6fbae
///       externalPort: 7233
///       internalPort: 25
///       internalPortId: b930d7f6-ceb7-40a0-8b81-a425dd994ccf
///       protocol: tcp
/// ```
class PortForwardingV2 extends pulumi.CustomResource {
  /// A text describing the port forwarding. Changing this
  /// updates the `description` of an existing port forwarding.
  late final pulumi.Output<String?> description;
  /// The TCP/UDP/other protocol port number of the port forwarding. Changing this
  /// updates the `external_port` of an existing port forwarding.
  late final pulumi.Output<int> externalPort;
  /// The ID of the Neutron floating IP address. Changing this creates a new port forwarding.
  late final pulumi.Output<String> floatingipId;
  /// The fixed IPv4 address of the Neutron port associated with the port forwarding.
  /// Changing this updates the `internal_ip_address` of an existing port forwarding.
  late final pulumi.Output<String> internalIpAddress;
  /// The TCP/UDP/other protocol port number of the Neutron port fixed IP address associated to the
  /// port forwarding. Changing this updates the `internal_port` of an existing port forwarding.
  late final pulumi.Output<int> internalPort;
  /// The ID of the Neutron port associated with the port forwarding. Changing
  /// this updates the `internal_port_id` of an existing port forwarding.
  late final pulumi.Output<String> internalPortId;
  /// The IP protocol used in the port forwarding. Changing this updates the `protocol`
  /// of an existing port forwarding.
  late final pulumi.Output<String> protocol;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port forwarding. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// port forwarding.
  late final pulumi.Output<String> region;

  /// Creates a new [PortForwardingV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PortForwardingV2]. {@macro pulumi_networking_port_forwarding_v2_port_forwarding_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PortForwardingV2(
    String name, {
    PortForwardingV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/portForwardingV2:PortForwardingV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.externalPort = registerOutput<int>('externalPort');
    this.floatingipId = registerOutput<String>('floatingipId');
    this.internalIpAddress = registerOutput<String>('internalIpAddress');
    this.internalPort = registerOutput<int>('internalPort');
    this.internalPortId = registerOutput<String>('internalPortId');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
  }
}
