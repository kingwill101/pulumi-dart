import 'package:pulumi/pulumi.dart';
import 'lite_reservation_args.dart';

/// > **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use <span pulumi-lang-nodejs="`googlePubsubReservation`" pulumi-lang-dotnet="`GooglePubsubReservation`" pulumi-lang-go="`googlePubsubReservation`" pulumi-lang-python="`google_pubsub_reservation`" pulumi-lang-yaml="`googlePubsubReservation`" pulumi-lang-java="`googlePubsubReservation`">`google_pubsub_reservation`</span> instead.
///
/// A named resource representing a shared pool of capacity.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.reservations)
/// * How-to Guides
/// * [Managing Reservations](https://cloud.google.com/pubsub/lite/docs/reservations)
///
/// ## Example Usage
///
/// ### Pubsub Lite Reservation Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.pubsub.LiteReservation("example", {
/// name: "example-reservation",
/// project: project.then(project => project.number),
/// throughputCapacity: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.pubsub.LiteReservation("example",
/// name="example-reservation",
/// project=project.number,
/// throughput_capacity=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var example = new Gcp.PubSub.LiteReservation("example", new()
/// {
/// Name = "example-reservation",
/// Project = project.Apply(getProjectResult => getProjectResult.Number),
/// ThroughputCapacity = 2,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewLiteReservation(ctx, "example", &pubsub.LiteReservationArgs{
/// Name:               pulumi.String("example-reservation"),
/// Project:            pulumi.String(project.Number),
/// ThroughputCapacity: pulumi.Int(2),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.pubsub.LiteReservation;
/// import com.pulumi.gcp.pubsub.LiteReservationArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var example = new LiteReservation("example", LiteReservationArgs.builder()
/// .name("example-reservation")
/// .project(project.number())
/// .throughputCapacity(2)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:pubsub:LiteReservation
/// properties:
/// name: example-reservation
/// project: ${project.number}
/// throughputCapacity: 2
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/reservations/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default projects/{{project}}/locations/{{region}}/reservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{name}}
/// ```
class LiteReservation extends CustomResource {
  /// Name of the reservation.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the pubsub lite reservation.
  late final Output<String?> region;

  /// The reserved throughput capacity. Every unit of throughput capacity is
  /// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
  /// messages.
  late final Output<int> throughputCapacity;

  LiteReservation(
    String name, {
    LiteReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteReservation:LiteReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String?>();
    this.throughputCapacity = Output.createUnknown<int>();
  }
}
