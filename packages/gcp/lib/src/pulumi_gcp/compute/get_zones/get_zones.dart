import 'package:pulumi/pulumi.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// Provides access to available Google Compute zones in a region for a given project.
/// See more about [regions and zones](https://cloud.google.com/compute/docs/regions-zones/regions-zones) in the upstream docs.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.compute.getZones({});
/// const foo: gcp.compute.InstanceGroupManager[] = [];
/// available.then(available => available.names).length.apply(rangeBody => {
/// for (const range = {value: 0}; range.value < rangeBody; range.value++) {
/// foo.push(new gcp.compute.InstanceGroupManager(`foo-${range.value}`, {
/// name: `test-${range.value}`,
/// instanceTemplate: foobar.selfLink,
/// baseInstanceName: `foobar-${range.value}`,
/// zone: available.then(available => available.names[range.value]),
/// targetSize: 1,
/// }));
/// }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.compute.get_zones()
/// foo = []
/// def create_foo(range_body):
/// for range in [{"value": i} for i in range(0, range_body)]:
/// foo.append(gcp.compute.InstanceGroupManager(f"foo-{range['value']}",
/// name=f"test-{range['value']}",
/// instance_template=foobar["selfLink"],
/// base_instance_name=f"foobar-{range['value']}",
/// zone=available.names[range["value"]],
/// target_size=1))
///
/// (len(available.names)).apply(create_foo)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.Compute.GetZones.Invoke();
///
/// var foo = new List<Gcp.Compute.InstanceGroupManager>();
/// for (var rangeIndex = 0; rangeIndex < available.Apply(getZonesResult => getZonesResult.Names).Length; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// foo.Add(new Gcp.Compute.InstanceGroupManager($"foo-{range.Value}", new()
/// {
/// Name = $"test-{range.Value}",
/// InstanceTemplate = foobar.SelfLink,
/// BaseInstanceName = $"foobar-{range.Value}",
/// Zone = available.Apply(getZonesResult => getZonesResult.Names)[range.Value],
/// TargetSize = 1,
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
/// available, err := compute.GetZones(ctx, &compute.GetZonesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// var foo []*compute.InstanceGroupManager
/// for index := 0; index < int(len(available.Names)); index++ {
/// key0 := index
/// val0 := index
/// __res, err := compute.NewInstanceGroupManager(ctx, fmt.Sprintf("foo-%v", key0), &compute.InstanceGroupManagerArgs{
/// Name:             pulumi.Sprintf("test-%v", val0),
/// InstanceTemplate: foobar.SelfLink,
/// BaseInstanceName: pulumi.Sprintf("foobar-%v", val0),
/// Zone:             pulumi.String(available.Names[val0]),
/// TargetSize:       pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// foo = append(foo, __res)
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
/// import com.pulumi.gcp.compute.inputs.GetZonesArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
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
/// final var available = ComputeFunctions.getZones(GetZonesArgs.builder()
/// .build());
///
/// for (var i = 0; i < available.names().length(); i++) {
/// new InstanceGroupManager("foo-" + i, InstanceGroupManagerArgs.builder()
/// .name(String.format("test-%s", range.value()))
/// .instanceTemplate(foobar.selfLink())
/// .baseInstanceName(String.format("foobar-%s", range.value()))
/// .zone(available.names()[range.value()])
/// .targetSize(1)
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getZones:getZones',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
