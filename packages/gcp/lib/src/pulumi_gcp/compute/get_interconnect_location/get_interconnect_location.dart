import 'package:pulumi/pulumi.dart';
import 'get_interconnect_location_args.dart';
import 'get_interconnect_location_result.dart';

/// Get the details of a single interconnect location. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/get) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _this = gcp.compute.getInterconnectLocation({
/// name: "iad-zone1-1",
/// });
/// const thisInterconnect = new gcp.compute.Interconnect("this", {
/// project: _this.then(_this => _this.project),
/// location: _this.then(_this => _this.selfLink),
/// name: "my-dedicated-connection-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// this = gcp.compute.get_interconnect_location(name="iad-zone1-1")
/// this_interconnect = gcp.compute.Interconnect("this",
/// project=this.project,
/// location=this.self_link,
/// name="my-dedicated-connection-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @this = Gcp.Compute.GetInterconnectLocation.Invoke(new()
/// {
/// Name = "iad-zone1-1",
/// });
///
/// var thisInterconnect = new Gcp.Compute.Interconnect("this", new()
/// {
/// Project = @this.Apply(@this => @this.Apply(getInterconnectLocationResult => getInterconnectLocationResult.Project)),
/// Location = @this.Apply(@this => @this.Apply(getInterconnectLocationResult => getInterconnectLocationResult.SelfLink)),
/// Name = "my-dedicated-connection-1",
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
/// this, err := compute.GetInterconnectLocation(ctx, &compute.GetInterconnectLocationArgs{
/// Name: "iad-zone1-1",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInterconnect(ctx, "this", &compute.InterconnectArgs{
/// Project:  pulumi.String(this.Project),
/// Location: pulumi.String(this.SelfLink),
/// Name:     pulumi.String("my-dedicated-connection-1"),
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
/// import com.pulumi.gcp.compute.inputs.GetInterconnectLocationArgs;
/// import com.pulumi.gcp.compute.Interconnect;
/// import com.pulumi.gcp.compute.InterconnectArgs;
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
/// final var this = ComputeFunctions.getInterconnectLocation(GetInterconnectLocationArgs.builder()
/// .name("iad-zone1-1")
/// .build());
///
/// var thisInterconnect = new Interconnect("thisInterconnect", InterconnectArgs.builder()
/// .project(this_.project())
/// .location(this_.selfLink())
/// .name("my-dedicated-connection-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// thisInterconnect:
/// type: gcp:compute:Interconnect
/// name: this
/// properties:
/// project: ${this.project}
/// location: ${this.selfLink}
/// name: my-dedicated-connection-1
/// variables:
/// this:
/// fn::invoke:
/// function: gcp:compute:getInterconnectLocation
/// arguments:
/// name: iad-zone1-1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInterconnectLocationResult> getInterconnectLocation(
  GetInterconnectLocationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInterconnectLocation:getInterconnectLocation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectLocationResult.fromMap(result);
}
