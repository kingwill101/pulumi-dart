import 'package:pulumi/pulumi.dart';
import 'get_reservation_block_args.dart';
import 'get_reservation_block_result.dart';

/// Get information about a Google Compute Engine Reservation Block. Reservation blocks are automatically created by Google Cloud within reservations and represent a physical grouping of resources.
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/reservationBlocks).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const block = gcp.compute.getReservationBlock({
/// name: "my-reservation-block",
/// reservation: "my-reservation",
/// zone: "us-central1-a",
/// });
/// export const blockStatus = block.then(block => block.status);
/// export const blockInUseCount = block.then(block => block.inUseCount);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// block = gcp.compute.get_reservation_block(name="my-reservation-block",
/// reservation="my-reservation",
/// zone="us-central1-a")
/// pulumi.export("blockStatus", block.status)
/// pulumi.export("blockInUseCount", block.in_use_count)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var block = Gcp.Compute.GetReservationBlock.Invoke(new()
/// {
/// Name = "my-reservation-block",
/// Reservation = "my-reservation",
/// Zone = "us-central1-a",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["blockStatus"] = block.Apply(getReservationBlockResult => getReservationBlockResult.Status),
/// ["blockInUseCount"] = block.Apply(getReservationBlockResult => getReservationBlockResult.InUseCount),
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
/// block, err := compute.GetReservationBlock(ctx, &compute.GetReservationBlockArgs{
/// Name:        "my-reservation-block",
/// Reservation: "my-reservation",
/// Zone:        pulumi.StringRef("us-central1-a"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("blockStatus", block.Status)
/// ctx.Export("blockInUseCount", block.InUseCount)
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
/// import com.pulumi.gcp.compute.inputs.GetReservationBlockArgs;
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
/// final var block = ComputeFunctions.getReservationBlock(GetReservationBlockArgs.builder()
/// .name("my-reservation-block")
/// .reservation("my-reservation")
/// .zone("us-central1-a")
/// .build());
///
/// ctx.export("blockStatus", block.status());
/// ctx.export("blockInUseCount", block.inUseCount());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// block:
/// fn::invoke:
/// function: gcp:compute:getReservationBlock
/// arguments:
/// name: my-reservation-block
/// reservation: my-reservation
/// zone: us-central1-a
/// outputs:
/// blockStatus: ${block.status}
/// blockInUseCount: ${block.inUseCount}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReservationBlockResult> getReservationBlock(
  GetReservationBlockArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservationBlock:getReservationBlock',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationBlockResult.fromMap(result);
}
