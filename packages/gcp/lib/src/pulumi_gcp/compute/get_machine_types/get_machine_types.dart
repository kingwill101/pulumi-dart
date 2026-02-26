import 'package:pulumi/pulumi.dart';
import 'get_machine_types_args.dart';
import 'get_machine_types_result.dart';

/// Provides access to available Google Compute machine types in a zone for a given project.
/// See more about [machine type availability](https://cloud.google.com/compute/docs/regions-zones#available) in the upstream docs.
///
/// To get more information about machine types, see:
///
/// * [API Documentation](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes/list)
/// * [Comparison Guide](https://cloud.google.com/compute/docs/machine-resource)
///
/// ## Example Usage
///
/// ### Property-Based Availability
///
/// Create a VM instance template for each machine type with 16GB of memory and 8 CPUs available in the provided zone.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
/// const example = await gcp.compute.getMachineTypes({
/// filter: "memoryMb = 16384 AND guestCpus = 8",
/// zone: zone,
/// });
/// const exampleInstanceTemplate: gcp.compute.InstanceTemplate[] = [];
/// for (const range of std.toset({
/// input: example.machineTypes.map(__item => __item.name),
/// }).result.map((v, k) => ({key: k, value: v}))) {
/// exampleInstanceTemplate.push(new gcp.compute.InstanceTemplate(`example-${range.key}`, {
/// machineType: range.value,
/// disks: [{
/// sourceImage: "debian-cloud/debian-11",
/// autoDelete: true,
/// boot: true,
/// }],
/// }));
/// }
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.compute.get_machine_types(filter="memoryMb = 16384 AND guestCpus = 8",
/// zone=zone)
/// example_instance_template = []
/// for range in [{"key": k, "value": v} for [k, v] in enumerate(std.toset(input=[__item.name for __item in example.machine_types]).result)]:
/// example_instance_template.append(gcp.compute.InstanceTemplate(f"example-{range['key']}",
/// machine_type=range["value"],
/// disks=[{
/// "source_image": "debian-cloud/debian-11",
/// "auto_delete": True,
/// "boot": True,
/// }]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
/// var example = await Gcp.Compute.GetMachineTypes.InvokeAsync(new()
/// {
/// Filter = "memoryMb = 16384 AND guestCpus = 8",
/// Zone = zone,
/// });
///
/// var exampleInstanceTemplate = new List<Gcp.Compute.InstanceTemplate>();
/// foreach (var range in )
/// {
/// exampleInstanceTemplate.Add(new Gcp.Compute.InstanceTemplate($"example-{range.Key}", new()
/// {
/// MachineType = range.Value,
/// Disks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
/// {
/// SourceImage = "debian-cloud/debian-11",
/// AutoDelete = true,
/// Boot = true,
/// },
/// },
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := compute.GetMachineTypes(ctx, &compute.GetMachineTypesArgs{
/// Filter: pulumi.StringRef("memoryMb = 16384 AND guestCpus = 8"),
/// Zone: pulumi.StringRef(zone),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var exampleInstanceTemplate []*compute.InstanceTemplate
/// for key0, val0 := range interface{}(std.Toset(ctx, &std.TosetArgs{
/// Input: %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:9,15-43),
/// }, nil).Result) {
/// __res, err := compute.NewInstanceTemplate(ctx, fmt.Sprintf("example-%v", key0), &compute.InstanceTemplateArgs{
/// MachineType: pulumi.Any(val0),
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String("debian-cloud/debian-11"),
/// AutoDelete: pulumi.Bool(true),
/// Boot: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleInstanceTemplate = append(exampleInstanceTemplate, __res)
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
/// import com.pulumi.gcp.compute.inputs.GetMachineTypesArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
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
/// final var example = ComputeFunctions.getMachineTypes(GetMachineTypesArgs.builder()
/// .filter("memoryMb = 16384 AND guestCpus = 8")
/// .zone(zone)
/// .build());
///
/// for (var range : KeyedValue.of(com.pulumi.std.StdFunctions(TosetArgs.builder()
/// .input(example.machineTypes().stream().map(element -> element.name()).collect(toList()))
/// .build()).result())) {
/// new InstanceTemplate("exampleInstanceTemplate-" + range.key(), InstanceTemplateArgs.builder()
/// .machineType(range.value())
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage("debian-cloud/debian-11")
/// .autoDelete(true)
/// .boot(true)
/// .build())
/// .build());
/// }
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleInstanceTemplate:
/// type: gcp:compute:InstanceTemplate
/// name: example
/// properties:
/// machineType: ${range.value}
/// disks:
/// - sourceImage: debian-cloud/debian-11
/// autoDelete: true
/// boot: true
/// options: {}
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:compute:getMachineTypes
/// arguments:
/// filter: memoryMb = 16384 AND guestCpus = 8
/// zone: ${zone}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Machine Family Preference
///
/// Create an instance template, preferring <span pulumi-lang-nodejs="`c3`" pulumi-lang-dotnet="`C3`" pulumi-lang-go="`c3`" pulumi-lang-python="`c3`" pulumi-lang-yaml="`c3`" pulumi-lang-java="`c3`">`c3`</span> machine family if available in the provided zone, otherwise falling back to <span pulumi-lang-nodejs="`c2`" pulumi-lang-dotnet="`C2`" pulumi-lang-go="`c2`" pulumi-lang-python="`c2`" pulumi-lang-yaml="`c2`" pulumi-lang-java="`c2`">`c2`</span> and finally <span pulumi-lang-nodejs="`n2`" pulumi-lang-dotnet="`N2`" pulumi-lang-go="`n2`" pulumi-lang-python="`n2`" pulumi-lang-yaml="`n2`" pulumi-lang-java="`n2`">`n2`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const example = gcp.compute.getMachineTypes({
/// filter: "memoryMb = 16384 AND guestCpus = 4",
/// zone: zone,
/// });
/// const exampleInstanceTemplate = new gcp.compute.InstanceTemplate("example", {
/// machineType: Promise.all([example, std.startswith({
/// input: mt.name,
/// prefix: "c3-",
/// }), example, std.startswith({
/// input: mt.name,
/// prefix: "c2-",
/// }), example, std.startswith({
/// input: mt.name,
/// prefix: "n2-",
/// })]).then(([example, invoke, example1, invoke1, example2, invoke2]) => std.coalescelist({
/// input: [
/// .filter(mt => invoke.result).map(mt => (mt.name)),
/// .filter(mt => invoke1.result).map(mt => (mt.name)),
/// .filter(mt => invoke2.result).map(mt => (mt.name)),
/// ],
/// })).then(invoke => invoke.result?.[0]),
/// disks: [{
/// sourceImage: "debian-cloud/debian-11",
/// autoDelete: true,
/// boot: true,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.compute.get_machine_types(filter="memoryMb = 16384 AND guestCpus = 4",
/// zone=zone)
/// example_instance_template = gcp.compute.InstanceTemplate("example",
/// machine_type=std.coalescelist(input=[
/// [mt.name for mt in example.machine_types if std.startswith(input=mt.name,
/// prefix="c3-").result],
/// [mt.name for mt in example.machine_types if std.startswith(input=mt.name,
/// prefix="c2-").result],
/// [mt.name for mt in example.machine_types if std.startswith(input=mt.name,
/// prefix="n2-").result],
/// ]).result[0],
/// disks=[{
/// "source_image": "debian-cloud/debian-11",
/// "auto_delete": True,
/// "boot": True,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.Compute.GetMachineTypes.Invoke(new()
/// {
/// Filter = "memoryMb = 16384 AND guestCpus = 4",
/// Zone = zone,
/// });
///
/// var exampleInstanceTemplate = new Gcp.Compute.InstanceTemplate("example", new()
/// {
/// MachineType = Output.Tuple(example, Std.Startswith.Invoke(new()
/// {
/// Input = mt.Name,
/// Prefix = "c3-",
/// }), example, Std.Startswith.Invoke(new()
/// {
/// Input = mt.Name,
/// Prefix = "c2-",
/// }), example, Std.Startswith.Invoke(new()
/// {
/// Input = mt.Name,
/// Prefix = "n2-",
/// })).Apply(values =>
/// {
/// var example = values.Item1;
/// var invoke = values.Item2;
/// var example1 = values.Item3;
/// var invoke1 = values.Item4;
/// var example2 = values.Item5;
/// var invoke2 = values.Item6;
/// return Std.Coalescelist.Invoke(new()
/// {
/// Input = new[]
/// {
/// .Where(mt => invoke.Result).Select(mt =>
/// {
/// return mt.Name;
/// }).ToList(),
/// .Where(mt => invoke1.Result).Select(mt =>
/// {
/// return mt.Name;
/// }).ToList(),
/// .Where(mt => invoke2.Result).Select(mt =>
/// {
/// return mt.Name;
/// }).ToList(),
/// },
/// });
/// }).Apply(invoke => invoke.Result[0]),
/// Disks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
/// {
/// SourceImage = "debian-cloud/debian-11",
/// AutoDelete = true,
/// Boot = true,
/// },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMachineTypesResult> getMachineTypes(
  GetMachineTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineTypes:getMachineTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMachineTypesResult.fromMap(result);
}
