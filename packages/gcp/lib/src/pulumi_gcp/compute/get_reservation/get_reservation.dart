import 'package:pulumi/pulumi.dart';
import 'get_reservation_args.dart';
import 'get_reservation_result.dart';

/// Provides access to available Google Compute Reservation Resources for a given project.
/// See more about [Reservations of Compute Engine resources](https://cloud.google.com/compute/docs/instances/reservations-overview) in the upstream docs.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reservation = gcp.compute.getReservation({
/// name: "gce-reservation",
/// zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reservation = gcp.compute.get_reservation(name="gce-reservation",
/// zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var reservation = Gcp.Compute.GetReservation.Invoke(new()
/// {
/// Name = "gce-reservation",
/// Zone = "us-central1-a",
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
/// _, err := compute.LookupReservation(ctx, &compute.LookupReservationArgs{
/// Name: "gce-reservation",
/// Zone: "us-central1-a",
/// }, nil)
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
/// import com.pulumi.gcp.compute.inputs.GetReservationArgs;
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
/// final var reservation = ComputeFunctions.getReservation(GetReservationArgs.builder()
/// .name("gce-reservation")
/// .zone("us-central1-a")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// reservation:
/// fn::invoke:
/// function: gcp:compute:getReservation
/// arguments:
/// name: gce-reservation
/// zone: us-central1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservation:getReservation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}
