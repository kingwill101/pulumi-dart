import 'package:pulumi/pulumi.dart';
import '../bi_reservation_preferred_table/bi_reservation_preferred_table.dart';
import 'bi_reservation_args.dart';

/// Represents a BI Reservation.
///
///
/// To get more information about BiReservation, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/BiReservation)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Bi Reservation Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reservation = new gcp.bigquery.BiReservation("reservation", {
/// location: "us-west2",
/// size: 3000000000,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reservation = gcp.bigquery.BiReservation("reservation",
/// location="us-west2",
/// size=3000000000)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var reservation = new Gcp.BigQuery.BiReservation("reservation", new()
/// {
/// Location = "us-west2",
/// Size = 3000000000,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.NewBiReservation(ctx, "reservation", &bigquery.BiReservationArgs{
/// Location: pulumi.String("us-west2"),
/// Size:     pulumi.Int(3000000000),
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
/// import com.pulumi.gcp.bigquery.BiReservation;
/// import com.pulumi.gcp.bigquery.BiReservationArgs;
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
/// var reservation = new BiReservation("reservation", BiReservationArgs.builder()
/// .location("us-west2")
/// .size(3000000000)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// reservation:
/// type: gcp:bigquery:BiReservation
/// properties:
/// location: us-west2
/// size: '3000000000'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// BiReservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/biReservation`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, BiReservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default projects/{{project}}/locations/{{location}}/biReservation
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default {{location}}
/// ```
class BiReservation extends CustomResource {
  /// LOCATION_DESCRIPTION
  late final Output<String> location;

  /// The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  late final Output<String> name;

  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  late final Output<List<BiReservationPreferredTable>?> preferredTables;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Size of a reservation, in bytes.
  late final Output<int?> size;

  /// The last update timestamp of a reservation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  BiReservation(
    String name, {
    BiReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/biReservation:BiReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.preferredTables =
        Output.createUnknown<List<BiReservationPreferredTable>?>();
    this.project = Output.createUnknown<String>();
    this.size = Output.createUnknown<int?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
