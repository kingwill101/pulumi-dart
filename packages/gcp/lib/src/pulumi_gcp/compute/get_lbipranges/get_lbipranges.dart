import 'package:pulumi/pulumi.dart';
import 'get_lbipranges_result.dart';

/// Use this data source to access IP ranges in your firewall rules.
///
/// https://cloud.google.com/compute/docs/load-balancing/health-checks#health_check_source_ips_and_firewall_rules
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ranges = gcp.compute.getLBIPRanges({});
/// const lb = new gcp.compute.Firewall("lb", {
/// name: "lb-firewall",
/// network: main.name,
/// allows: [{
/// protocol: "tcp",
/// ports: ["80"],
/// }],
/// sourceRanges: ranges.then(ranges => ranges.networks),
/// targetTags: ["InstanceBehindLoadBalancer"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ranges = gcp.compute.get_lbip_ranges()
/// lb = gcp.compute.Firewall("lb",
/// name="lb-firewall",
/// network=main["name"],
/// allows=[{
/// "protocol": "tcp",
/// "ports": ["80"],
/// }],
/// source_ranges=ranges.networks,
/// target_tags=["InstanceBehindLoadBalancer"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ranges = Gcp.Compute.GetLBIPRanges.Invoke();
///
/// var lb = new Gcp.Compute.Firewall("lb", new()
/// {
/// Name = "lb-firewall",
/// Network = main.Name,
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
/// SourceRanges = ranges.Apply(getLBIPRangesResult => getLBIPRangesResult.Networks),
/// TargetTags = new[]
/// {
/// "InstanceBehindLoadBalancer",
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
/// ranges, err := compute.GetLBIPRanges(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewFirewall(ctx, "lb", &compute.FirewallArgs{
/// Name:    pulumi.String("lb-firewall"),
/// Network: pulumi.Any(main.Name),
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("80"),
/// },
/// },
/// },
/// SourceRanges: interface{}(ranges.Networks),
/// TargetTags: pulumi.StringArray{
/// pulumi.String("InstanceBehindLoadBalancer"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
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
/// final var ranges = ComputeFunctions.getLBIPRanges(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// var lb = new Firewall("lb", FirewallArgs.builder()
/// .name("lb-firewall")
/// .network(main.name())
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("80")
/// .build())
/// .sourceRanges(ranges.networks())
/// .targetTags("InstanceBehindLoadBalancer")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// lb:
/// type: gcp:compute:Firewall
/// properties:
/// name: lb-firewall
/// network: ${main.name}
/// allows:
/// - protocol: tcp
/// ports:
/// - '80'
/// sourceRanges: ${ranges.networks}
/// targetTags:
/// - InstanceBehindLoadBalancer
/// variables:
/// ranges:
/// fn::invoke:
/// function: gcp:compute:getLBIPRanges
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLBIPRangesResult> getLBIPRanges({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getLBIPRanges:getLBIPRanges',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetLBIPRangesResult.fromMap(result);
}
