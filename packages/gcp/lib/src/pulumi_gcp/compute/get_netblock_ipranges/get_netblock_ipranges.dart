import 'package:pulumi/pulumi.dart';
import 'get_netblock_ipranges_args.dart';
import 'get_netblock_ipranges_result.dart';

/// Use this data source to get the IP addresses from different special IP ranges on Google Cloud Platform.
///
/// ## Example Usage
///
/// ### Cloud Ranges
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const netblock = gcp.compute.getNetblockIPRanges({});
/// export const cidrBlocks = netblock.then(netblock => netblock.cidrBlocks);
/// export const cidrBlocksIpv4 = netblock.then(netblock => netblock.cidrBlocksIpv4s);
/// export const cidrBlocksIpv6 = netblock.then(netblock => netblock.cidrBlocksIpv6s);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// netblock = gcp.compute.get_netblock_ip_ranges()
/// pulumi.export("cidrBlocks", netblock.cidr_blocks)
/// pulumi.export("cidrBlocksIpv4", netblock.cidr_blocks_ipv4s)
/// pulumi.export("cidrBlocksIpv6", netblock.cidr_blocks_ipv6s)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var netblock = Gcp.Compute.GetNetblockIPRanges.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["cidrBlocks"] = netblock.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocks),
/// ["cidrBlocksIpv4"] = netblock.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocksIpv4s),
/// ["cidrBlocksIpv6"] = netblock.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocksIpv6s),
/// };
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
/// netblock, err := compute.GetNetblockIPRanges(ctx, &compute.GetNetblockIPRangesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("cidrBlocks", netblock.CidrBlocks)
/// ctx.Export("cidrBlocksIpv4", netblock.CidrBlocksIpv4s)
/// ctx.Export("cidrBlocksIpv6", netblock.CidrBlocksIpv6s)
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetblockIPRangesArgs;
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
/// final var netblock = ComputeFunctions.getNetblockIPRanges(GetNetblockIPRangesArgs.builder()
/// .build());
///
/// ctx.export("cidrBlocks", netblock.cidrBlocks());
/// ctx.export("cidrBlocksIpv4", netblock.cidrBlocksIpv4s());
/// ctx.export("cidrBlocksIpv6", netblock.cidrBlocksIpv6s());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// netblock:
/// fn::invoke:
/// function: gcp:compute:getNetblockIPRanges
/// arguments: {}
/// outputs:
/// cidrBlocks: ${netblock.cidrBlocks}
/// cidrBlocksIpv4: ${netblock.cidrBlocksIpv4s}
/// cidrBlocksIpv6: ${netblock.cidrBlocksIpv6s}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Allow Health Checks
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const legacy_hcs = gcp.compute.getNetblockIPRanges({
/// rangeType: "legacy-health-checkers",
/// });
/// const _default = new gcp.compute.Network("default", {name: "test-network"});
/// const allow_hcs = new gcp.compute.Firewall("allow-hcs", {
/// name: "allow-hcs",
/// network: _default.name,
/// allows: [{
/// protocol: "tcp",
/// ports: ["80"],
/// }],
/// sourceRanges: legacy_hcs.then(legacy_hcs => legacy_hcs.cidrBlocksIpv4s),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// legacy_hcs = gcp.compute.get_netblock_ip_ranges(range_type="legacy-health-checkers")
/// default = gcp.compute.Network("default", name="test-network")
/// allow_hcs = gcp.compute.Firewall("allow-hcs",
/// name="allow-hcs",
/// network=default.name,
/// allows=[{
/// "protocol": "tcp",
/// "ports": ["80"],
/// }],
/// source_ranges=legacy_hcs.cidr_blocks_ipv4s)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var legacy_hcs = Gcp.Compute.GetNetblockIPRanges.Invoke(new()
/// {
/// RangeType = "legacy-health-checkers",
/// });
///
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "test-network",
/// });
///
/// var allow_hcs = new Gcp.Compute.Firewall("allow-hcs", new()
/// {
/// Name = "allow-hcs",
/// Network = @default.Name,
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "80",
/// },
/// },
/// },
/// SourceRanges = legacy_hcs.Apply(legacy_hcs => legacy_hcs.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocksIpv4s)),
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
/// legacy_hcs, err := compute.GetNetblockIPRanges(ctx, &compute.GetNetblockIPRangesArgs{
/// RangeType: pulumi.StringRef("legacy-health-checkers"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("test-network"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewFirewall(ctx, "allow-hcs", &compute.FirewallArgs{
/// Name:    pulumi.String("allow-hcs"),
/// Network: _default.Name,
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("80"),
/// },
/// },
/// },
/// SourceRanges: interface{}(legacy_hcs.CidrBlocksIpv4s),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetblockIPRangesArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
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
/// final var legacy-hcs = ComputeFunctions.getNetblockIPRanges(GetNetblockIPRangesArgs.builder()
/// .rangeType("legacy-health-checkers")
/// .build());
///
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("test-network")
/// .build());
///
/// var allow_hcs = new Firewall("allow-hcs", FirewallArgs.builder()
/// .name("allow-hcs")
/// .network(default_.name())
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("80")
/// .build())
/// .sourceRanges(legacy_hcs.cidrBlocksIpv4s())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// allow-hcs:
/// type: gcp:compute:Firewall
/// properties:
/// name: allow-hcs
/// network: ${default.name}
/// allows:
/// - protocol: tcp
/// ports:
/// - '80'
/// sourceRanges: ${["legacy-hcs"].cidrBlocksIpv4s}
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: test-network
/// variables:
/// legacy-hcs:
/// fn::invoke:
/// function: gcp:compute:getNetblockIPRanges
/// arguments:
/// rangeType: legacy-health-checkers
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetblockIPRangesResult> getNetblockIPRanges(
  GetNetblockIPRangesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetblockIPRanges:getNetblockIPRanges',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetblockIPRangesResult.fromMap(result);
}
