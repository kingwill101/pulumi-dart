import 'package:pulumi/pulumi.dart';
import 'get_network_peering_args.dart';
import 'get_network_peering_result.dart';

/// Get information of a specified compute network peering. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/vpc/vpc-peering)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/networks).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
/// name: "foobar",
/// autoCreateSubnetworks: false,
/// });
/// const other = new gcp.compute.Network("other", {
/// name: "other",
/// autoCreateSubnetworks: false,
/// });
/// const peering1 = new gcp.compute.NetworkPeering("peering1", {
/// name: "peering1",
/// network: _default.selfLink,
/// peerNetwork: other.selfLink,
/// });
/// const peering2 = new gcp.compute.NetworkPeering("peering2", {
/// name: "peering2",
/// network: other.selfLink,
/// peerNetwork: _default.selfLink,
/// });
/// const peering1Ds = gcp.compute.getNetworkPeeringOutput({
/// name: peering1.name,
/// network: peering1.network,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
/// name="foobar",
/// auto_create_subnetworks=False)
/// other = gcp.compute.Network("other",
/// name="other",
/// auto_create_subnetworks=False)
/// peering1 = gcp.compute.NetworkPeering("peering1",
/// name="peering1",
/// network=default.self_link,
/// peer_network=other.self_link)
/// peering2 = gcp.compute.NetworkPeering("peering2",
/// name="peering2",
/// network=other.self_link,
/// peer_network=default.self_link)
/// peering1_ds = gcp.compute.get_network_peering_output(name=peering1.name,
/// network=peering1.network)
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
/// Name = "foobar",
/// AutoCreateSubnetworks = false,
/// });
///
/// var other = new Gcp.Compute.Network("other", new()
/// {
/// Name = "other",
/// AutoCreateSubnetworks = false,
/// });
///
/// var peering1 = new Gcp.Compute.NetworkPeering("peering1", new()
/// {
/// Name = "peering1",
/// Network = @default.SelfLink,
/// PeerNetwork = other.SelfLink,
/// });
///
/// var peering2 = new Gcp.Compute.NetworkPeering("peering2", new()
/// {
/// Name = "peering2",
/// Network = other.SelfLink,
/// PeerNetwork = @default.SelfLink,
/// });
///
/// var peering1Ds = Gcp.Compute.GetNetworkPeering.Invoke(new()
/// {
/// Name = peering1.Name,
/// Network = peering1.Network,
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
/// Name:                  pulumi.String("foobar"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// other, err := compute.NewNetwork(ctx, "other", &compute.NetworkArgs{
/// Name:                  pulumi.String("other"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// peering1, err := compute.NewNetworkPeering(ctx, "peering1", &compute.NetworkPeeringArgs{
/// Name:        pulumi.String("peering1"),
/// Network:     _default.SelfLink,
/// PeerNetwork: other.SelfLink,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkPeering(ctx, "peering2", &compute.NetworkPeeringArgs{
/// Name:        pulumi.String("peering2"),
/// Network:     other.SelfLink,
/// PeerNetwork: _default.SelfLink,
/// })
/// if err != nil {
/// return err
/// }
/// _ = compute.LookupNetworkPeeringOutput(ctx, compute.GetNetworkPeeringOutputArgs{
/// Name:    peering1.Name,
/// Network: peering1.Network,
/// }, nil)
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
/// import com.pulumi.gcp.compute.NetworkPeering;
/// import com.pulumi.gcp.compute.NetworkPeeringArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkPeeringArgs;
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
/// .name("foobar")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var other = new Network("other", NetworkArgs.builder()
/// .name("other")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var peering1 = new NetworkPeering("peering1", NetworkPeeringArgs.builder()
/// .name("peering1")
/// .network(default_.selfLink())
/// .peerNetwork(other.selfLink())
/// .build());
///
/// var peering2 = new NetworkPeering("peering2", NetworkPeeringArgs.builder()
/// .name("peering2")
/// .network(other.selfLink())
/// .peerNetwork(default_.selfLink())
/// .build());
///
/// final var peering1Ds = ComputeFunctions.getNetworkPeering(GetNetworkPeeringArgs.builder()
/// .name(peering1.name())
/// .network(peering1.network())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// peering1:
/// type: gcp:compute:NetworkPeering
/// properties:
/// name: peering1
/// network: ${default.selfLink}
/// peerNetwork: ${other.selfLink}
/// peering2:
/// type: gcp:compute:NetworkPeering
/// properties:
/// name: peering2
/// network: ${other.selfLink}
/// peerNetwork: ${default.selfLink}
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: foobar
/// autoCreateSubnetworks: 'false'
/// other:
/// type: gcp:compute:Network
/// properties:
/// name: other
/// autoCreateSubnetworks: 'false'
/// variables:
/// peering1Ds:
/// fn::invoke:
/// function: gcp:compute:getNetworkPeering
/// arguments:
/// name: ${peering1.name}
/// network: ${peering1.network}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkPeeringResult> getNetworkPeering(
  GetNetworkPeeringArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult.fromMap(result);
}
