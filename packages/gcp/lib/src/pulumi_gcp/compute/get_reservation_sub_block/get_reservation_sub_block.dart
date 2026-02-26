import 'package:pulumi/pulumi.dart';
import 'get_reservation_sub_block_args.dart';
import 'get_reservation_sub_block_result.dart';

/// Get information about a Google Compute Engine Reservation Sub-Block. Reservation sub-blocks are automatically created by Google Cloud within reservation blocks and represent a finer-grained physical grouping of resources.
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/reservationSubBlocks).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subBlock = gcp.compute.getReservationSubBlock({
/// name: "my-reservation-sub-block",
/// reservationBlock: "my-reservation-block",
/// reservation: "my-reservation",
/// zone: "us-central1-a",
/// });
/// export const subBlockStatus = subBlock.then(subBlock => subBlock.status);
/// export const subBlockHealth = subBlock.then(subBlock => subBlock.healthInfos);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sub_block = gcp.compute.get_reservation_sub_block(name="my-reservation-sub-block",
/// reservation_block="my-reservation-block",
/// reservation="my-reservation",
/// zone="us-central1-a")
/// pulumi.export("subBlockStatus", sub_block.status)
/// pulumi.export("subBlockHealth", sub_block.health_infos)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var subBlock = Gcp.Compute.GetReservationSubBlock.Invoke(new()
/// {
/// Name = "my-reservation-sub-block",
/// ReservationBlock = "my-reservation-block",
/// Reservation = "my-reservation",
/// Zone = "us-central1-a",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["subBlockStatus"] = subBlock.Apply(getReservationSubBlockResult => getReservationSubBlockResult.Status),
/// ["subBlockHealth"] = subBlock.Apply(getReservationSubBlockResult => getReservationSubBlockResult.HealthInfos),
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
/// subBlock, err := compute.GetReservationSubBlock(ctx, &compute.GetReservationSubBlockArgs{
/// Name:             "my-reservation-sub-block",
/// ReservationBlock: "my-reservation-block",
/// Reservation:      "my-reservation",
/// Zone:             pulumi.StringRef("us-central1-a"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("subBlockStatus", subBlock.Status)
/// ctx.Export("subBlockHealth", subBlock.HealthInfos)
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
/// import com.pulumi.gcp.compute.inputs.GetReservationSubBlockArgs;
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
/// final var subBlock = ComputeFunctions.getReservationSubBlock(GetReservationSubBlockArgs.builder()
/// .name("my-reservation-sub-block")
/// .reservationBlock("my-reservation-block")
/// .reservation("my-reservation")
/// .zone("us-central1-a")
/// .build());
///
/// ctx.export("subBlockStatus", subBlock.status());
/// ctx.export("subBlockHealth", subBlock.healthInfos());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// subBlock:
/// fn::invoke:
/// function: gcp:compute:getReservationSubBlock
/// arguments:
/// name: my-reservation-sub-block
/// reservationBlock: my-reservation-block
/// reservation: my-reservation
/// zone: us-central1-a
/// outputs:
/// subBlockStatus: ${subBlock.status}
/// subBlockHealth: ${subBlock.healthInfos}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReservationSubBlockResult> getReservationSubBlock(
  GetReservationSubBlockArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservationSubBlock:getReservationSubBlock',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationSubBlockResult.fromMap(result);
}
