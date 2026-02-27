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
///
/// ### Chronicle Watchlist Without Id
///
///
///
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
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entityCounts =
        registerOutput<List<WatchlistEntityCount>>('entityCounts');
    this.entityPopulationMechanism =
        registerOutput<WatchlistEntityPopulationMechanism>(
            'entityPopulationMechanism');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.multiplyingFactor = registerOutput<double?>('multiplyingFactor');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.watchlistId = registerOutput<String>('watchlistId');
    this.watchlistUserPreferences =
        registerOutput<WatchlistWatchlistUserPreferences>(
            'watchlistUserPreferences');
  }
}
