import 'package:pulumi/pulumi.dart';
import 'get_interconnect_locations_args.dart';
import 'get_interconnect_locations_result.dart';

/// Get a list of interconnect locations. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/list) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getInterconnectLocations({});
/// export const interconnectLocations = all.then(all => all.locations);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_interconnect_locations()
/// pulumi.export("interconnectLocations", all.locations)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Gcp.Compute.GetInterconnectLocations.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["interconnectLocations"] = all.Apply(getInterconnectLocationsResult => getInterconnectLocationsResult.Locations),
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
/// all, err := compute.GetInterconnectLocations(ctx, &compute.GetInterconnectLocationsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("interconnectLocations", all.Locations)
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
/// import com.pulumi.gcp.compute.inputs.GetInterconnectLocationsArgs;
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
/// final var all = ComputeFunctions.getInterconnectLocations(GetInterconnectLocationsArgs.builder()
/// .build());
///
/// ctx.export("interconnectLocations", all.locations());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: gcp:compute:getInterconnectLocations
/// arguments: {}
/// outputs:
/// interconnectLocations: ${all.locations}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInterconnectLocationsResult> getInterconnectLocations(
  GetInterconnectLocationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInterconnectLocations:getInterconnectLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectLocationsResult.fromMap(result);
}
