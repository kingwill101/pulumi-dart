import 'package:pulumi/pulumi.dart';
import '../watchlist_entity_count/watchlist_entity_count.dart';
import '../watchlist_entity_population_mechanism/watchlist_entity_population_mechanism.dart';
import '../watchlist_watchlist_user_preferences/watchlist_watchlist_user_preferences.dart';
import 'watchlist_args.dart';

/// A watchlist is a list of entities that allows for bulk operations over the included entities.
///
///
/// To get more information about Watchlist, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.watchlists)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Watchlist Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Watchlist("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// watchlistId: "watchlist-id",
/// description: "watchlist-description",
/// displayName: "watchlist_name",
/// multiplyingFactor: 1,
/// entityPopulationMechanism: {
/// manual: {},
/// },
/// watchlistUserPreferences: {
/// pinned: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Watchlist("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// watchlist_id="watchlist-id",
/// description="watchlist-description",
/// display_name="watchlist_name",
/// multiplying_factor=1,
/// entity_population_mechanism={
/// "manual": {},
/// },
/// watchlist_user_preferences={
/// "pinned": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.Watchlist("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// WatchlistId = "watchlist-id",
/// Description = "watchlist-description",
/// DisplayName = "watchlist_name",
/// MultiplyingFactor = 1,
/// EntityPopulationMechanism = new Gcp.Chronicle.Inputs.WatchlistEntityPopulationMechanismArgs
/// {
/// Manual = null,
/// },
/// WatchlistUserPreferences = new Gcp.Chronicle.Inputs.WatchlistWatchlistUserPreferencesArgs
/// {
/// Pinned = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewWatchlist(ctx, "example", &chronicle.WatchlistArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// WatchlistId:       pulumi.String("watchlist-id"),
/// Description:       pulumi.String("watchlist-description"),
/// DisplayName:       pulumi.String("watchlist_name"),
/// MultiplyingFactor: pulumi.Float64(1),
/// EntityPopulationMechanism: &chronicle.WatchlistEntityPopulationMechanismArgs{
/// Manual: &chronicle.WatchlistEntityPopulationMechanismManualArgs{},
/// },
/// WatchlistUserPreferences: &chronicle.WatchlistWatchlistUserPreferencesArgs{
/// Pinned: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.chronicle.Watchlist;
/// import com.pulumi.gcp.chronicle.WatchlistArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismManualArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistWatchlistUserPreferencesArgs;
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
/// var example = new Watchlist("example", WatchlistArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .watchlistId("watchlist-id")
/// .description("watchlist-description")
/// .displayName("watchlist_name")
/// .multiplyingFactor(1.0)
/// .entityPopulationMechanism(WatchlistEntityPopulationMechanismArgs.builder()
/// .manual(WatchlistEntityPopulationMechanismManualArgs.builder()
/// .build())
/// .build())
/// .watchlistUserPreferences(WatchlistWatchlistUserPreferencesArgs.builder()
/// .pinned(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:Watchlist
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// watchlistId: watchlist-id
/// description: watchlist-description
/// displayName: watchlist_name
/// multiplyingFactor: 1
/// entityPopulationMechanism:
/// manual: {}
/// watchlistUserPreferences:
/// pinned: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Watchlist Without Id
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Watchlist("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// description: "watchlist-description",
/// displayName: "watchlist-name",
/// multiplyingFactor: 1,
/// entityPopulationMechanism: {
/// manual: {},
/// },
/// watchlistUserPreferences: {
/// pinned: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Watchlist("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// description="watchlist-description",
/// display_name="watchlist-name",
/// multiplying_factor=1,
/// entity_population_mechanism={
/// "manual": {},
/// },
/// watchlist_user_preferences={
/// "pinned": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.Watchlist("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Description = "watchlist-description",
/// DisplayName = "watchlist-name",
/// MultiplyingFactor = 1,
/// EntityPopulationMechanism = new Gcp.Chronicle.Inputs.WatchlistEntityPopulationMechanismArgs
/// {
/// Manual = null,
/// },
/// WatchlistUserPreferences = new Gcp.Chronicle.Inputs.WatchlistWatchlistUserPreferencesArgs
/// {
/// Pinned = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewWatchlist(ctx, "example", &chronicle.WatchlistArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Description:       pulumi.String("watchlist-description"),
/// DisplayName:       pulumi.String("watchlist-name"),
/// MultiplyingFactor: pulumi.Float64(1),
/// EntityPopulationMechanism: &chronicle.WatchlistEntityPopulationMechanismArgs{
/// Manual: &chronicle.WatchlistEntityPopulationMechanismManualArgs{},
/// },
/// WatchlistUserPreferences: &chronicle.WatchlistWatchlistUserPreferencesArgs{
/// Pinned: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.chronicle.Watchlist;
/// import com.pulumi.gcp.chronicle.WatchlistArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismManualArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistWatchlistUserPreferencesArgs;
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
/// var example = new Watchlist("example", WatchlistArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .description("watchlist-description")
/// .displayName("watchlist-name")
/// .multiplyingFactor(1.0)
/// .entityPopulationMechanism(WatchlistEntityPopulationMechanismArgs.builder()
/// .manual(WatchlistEntityPopulationMechanismManualArgs.builder()
/// .build())
/// .build())
/// .watchlistUserPreferences(WatchlistWatchlistUserPreferencesArgs.builder()
/// .pinned(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:Watchlist
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// description: watchlist-description
/// displayName: watchlist-name
/// multiplyingFactor: 1
/// entityPopulationMechanism:
/// manual: {}
/// watchlistUserPreferences:
/// pinned: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Watchlist can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/watchlists/{{watchlist_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{watchlist_id}}`
///
/// * `{{location}}/{{instance}}/{{watchlist_id}}`
///
/// When using the `pulumi import` command, Watchlist can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/watchlist:Watchlist default projects/{{project}}/locations/{{location}}/instances/{{instance}}/watchlists/{{watchlist_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/watchlist:Watchlist default {{project}}/{{location}}/{{instance}}/{{watchlist_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/watchlist:Watchlist default {{location}}/{{instance}}/{{watchlist_id}}
/// ```
class Watchlist extends CustomResource {
  /// Output only. Time the watchlist was created.
  late final Output<String> createTime;

  /// Optional. Description of the watchlist.
  late final Output<String?> description;

  /// Required. Display name of the watchlist.
  /// Note that it must be at least one character and less than 63 characters
  /// (https://google.aip.dev/148).
  late final Output<String> displayName;

  /// Count of different types of entities in the watchlist.
  /// Structure is documented below.
  late final Output<List<WatchlistEntityCount>> entityCounts;

  /// Mechanism to populate entities in the watchlist.
  /// Structure is documented below.
  late final Output<WatchlistEntityPopulationMechanism>
      entityPopulationMechanism;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// Optional. Weight applied to the risk score for entities
  /// in this watchlist.
  /// The default is 1.0 if it is not specified.
  late final Output<double?> multiplyingFactor;

  /// Identifier. Resource name of the watchlist. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/watchlists/{watchlist}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. Time the watchlist was last updated.
  late final Output<String> updateTime;

  /// Optional. The ID to use for the watchlist,
  /// which will become the final component of the watchlist's resource name.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  late final Output<String> watchlistId;

  /// A collection of user preferences for watchlist UI configuration.
  /// Structure is documented below.
  late final Output<WatchlistWatchlistUserPreferences> watchlistUserPreferences;

  Watchlist(
    String name, {
    WatchlistArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/watchlist:Watchlist',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.entityCounts = Output.createUnknown<List<WatchlistEntityCount>>();
    this.entityPopulationMechanism =
        Output.createUnknown<WatchlistEntityPopulationMechanism>();
    this.instance = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.multiplyingFactor = Output.createUnknown<double?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.watchlistId = Output.createUnknown<String>();
    this.watchlistUserPreferences =
        Output.createUnknown<WatchlistWatchlistUserPreferences>();
  }
}
