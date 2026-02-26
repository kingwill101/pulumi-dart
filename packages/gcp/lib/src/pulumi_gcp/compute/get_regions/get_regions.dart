import 'package:pulumi/pulumi.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';

/// Provides access to available Google Compute regions for a given project.
/// See more about [regions and zones](https://cloud.google.com/compute/docs/regions-zones/) in the upstream docs.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.compute.getRegions({});
/// const cluster: gcp.compute.Subnetwork[] = [];
/// available.then(available => available.names).length.apply(rangeBody => {
/// for (const range = {value: 0}; range.value < rangeBody; range.value++) {
/// cluster.push(new gcp.compute.Subnetwork(`cluster-${range.value}`, {
/// name: "my-network",
/// ipCidrRange: `10.36.${range.value}.0/24`,
/// network: "my-network",
/// region: available.then(available => available.names[range.value]),
/// }));
/// }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.compute.get_regions()
/// cluster = []
/// def create_cluster(range_body):
/// for range in [{"value": i} for i in range(0, range_body)]:
/// cluster.append(gcp.compute.Subnetwork(f"cluster-{range['value']}",
/// name="my-network",
/// ip_cidr_range=f"10.36.{range['value']}.0/24",
/// network="my-network",
/// region=available.names[range["value"]]))
///
/// (len(available.names)).apply(create_cluster)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.Compute.GetRegions.Invoke();
///
/// var cluster = new List<Gcp.Compute.Subnetwork>();
/// for (var rangeIndex = 0; rangeIndex < available.Apply(getRegionsResult => getRegionsResult.Names).Length; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// cluster.Add(new Gcp.Compute.Subnetwork($"cluster-{range.Value}", new()
/// {
/// Name = "my-network",
/// IpCidrRange = $"10.36.{range.Value}.0/24",
/// Network = "my-network",
/// Region = available.Apply(getRegionsResult => getRegionsResult.Names)[range.Value],
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := compute.GetRegions(ctx, &compute.GetRegionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// var cluster []*compute.Subnetwork
/// for index := 0; index < int(len(available.Names)); index++ {
/// key0 := index
/// val0 := index
/// __res, err := compute.NewSubnetwork(ctx, fmt.Sprintf("cluster-%v", key0), &compute.SubnetworkArgs{
/// Name:        pulumi.String("my-network"),
/// IpCidrRange: pulumi.Sprintf("10.36.%v.0/24", val0),
/// Network:     pulumi.String("my-network"),
/// Region:      pulumi.String(available.Names[val0]),
/// })
/// if err != nil {
/// return err
/// }
/// cluster = append(cluster, __res)
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
/// import com.pulumi.gcp.compute.inputs.GetRegionsArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// final var available = ComputeFunctions.getRegions(GetRegionsArgs.builder()
/// .build());
///
/// for (var i = 0; i < available.names().length(); i++) {
/// new Subnetwork("cluster-" + i, SubnetworkArgs.builder()
/// .name("my-network")
/// .ipCidrRange(String.format("10.36.%s.0/24", range.value()))
/// .network("my-network")
/// .region(available.names()[range.value()])
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegions:getRegions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}
