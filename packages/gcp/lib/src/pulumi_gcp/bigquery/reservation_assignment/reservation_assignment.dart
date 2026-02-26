import 'package:pulumi/pulumi.dart';
import 'reservation_assignment_args.dart';

/// The BigqueryReservation Assignment resource.
///
///
/// To get more information about ReservationAssignment, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.reservations.assignments)
/// * How-to Guides
/// * [Work with reservation assignments](https://cloud.google.com/bigquery/docs/reservations-assignments)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Assignment Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.bigquery.Reservation("basic", {
/// name: "example-reservation",
/// project: "my-project-name",
/// location: "us-central1",
/// slotCapacity: 0,
/// ignoreIdleSlots: false,
/// });
/// const assignment = new gcp.bigquery.ReservationAssignment("assignment", {
/// assignee: "projects/my-project-name",
/// jobType: "PIPELINE",
/// reservation: basic.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.bigquery.Reservation("basic",
/// name="example-reservation",
/// project="my-project-name",
/// location="us-central1",
/// slot_capacity=0,
/// ignore_idle_slots=False)
/// assignment = gcp.bigquery.ReservationAssignment("assignment",
/// assignee="projects/my-project-name",
/// job_type="PIPELINE",
/// reservation=basic.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.BigQuery.Reservation("basic", new()
/// {
/// Name = "example-reservation",
/// Project = "my-project-name",
/// Location = "us-central1",
/// SlotCapacity = 0,
/// IgnoreIdleSlots = false,
/// });
///
/// var assignment = new Gcp.BigQuery.ReservationAssignment("assignment", new()
/// {
/// Assignee = "projects/my-project-name",
/// JobType = "PIPELINE",
/// Reservation = basic.Id,
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
/// basic, err := bigquery.NewReservation(ctx, "basic", &bigquery.ReservationArgs{
/// Name:            pulumi.String("example-reservation"),
/// Project:         pulumi.String("my-project-name"),
/// Location:        pulumi.String("us-central1"),
/// SlotCapacity:    pulumi.Int(0),
/// IgnoreIdleSlots: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bigquery.NewReservationAssignment(ctx, "assignment", &bigquery.ReservationAssignmentArgs{
/// Assignee:    pulumi.String("projects/my-project-name"),
/// JobType:     pulumi.String("PIPELINE"),
/// Reservation: basic.ID(),
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
/// import com.pulumi.gcp.bigquery.Reservation;
/// import com.pulumi.gcp.bigquery.ReservationArgs;
/// import com.pulumi.gcp.bigquery.ReservationAssignment;
/// import com.pulumi.gcp.bigquery.ReservationAssignmentArgs;
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
/// var basic = new Reservation("basic", ReservationArgs.builder()
/// .name("example-reservation")
/// .project("my-project-name")
/// .location("us-central1")
/// .slotCapacity(0)
/// .ignoreIdleSlots(false)
/// .build());
///
/// var assignment = new ReservationAssignment("assignment", ReservationAssignmentArgs.builder()
/// .assignee("projects/my-project-name")
/// .jobType("PIPELINE")
/// .reservation(basic.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:bigquery:Reservation
/// properties:
/// name: example-reservation
/// project: my-project-name
/// location: us-central1
/// slotCapacity: 0
/// ignoreIdleSlots: false
/// assignment:
/// type: gcp:bigquery:ReservationAssignment
/// properties:
/// assignee: projects/my-project-name
/// jobType: PIPELINE
/// reservation: ${basic.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ReservationAssignment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reservations/{{reservation}}/assignments/{{name}}`
///
/// * `{{project}}/{{location}}/{{reservation}}/{{name}}`
///
/// * `{{location}}/{{reservation}}/{{name}}`
///
/// When using the `pulumi import` command, ReservationAssignment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationAssignment:ReservationAssignment default projects/{{project}}/locations/{{location}}/reservations/{{reservation}}/assignments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationAssignment:ReservationAssignment default {{project}}/{{location}}/{{reservation}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationAssignment:ReservationAssignment default {{location}}/{{reservation}}/{{name}}
/// ```
class ReservationAssignment extends CustomResource {
  /// The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  late final Output<String> assignee;

  /// Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  late final Output<String> jobType;

  /// The location for the resource
  late final Output<String> location;

  /// Output only. The resource name of the assignment.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The reservation for the resource
  late final Output<String> reservation;

  /// Assignment will remain in PENDING state if no active capacity commitment is present. It will become ACTIVE when some capacity commitment becomes active.
  /// Possible values: STATE_UNSPECIFIED, PENDING, ACTIVE
  late final Output<String> state;

  ReservationAssignment(
    String name, {
    ReservationAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservationAssignment:ReservationAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignee = Output.createUnknown<String>();
    this.jobType = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reservation = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
