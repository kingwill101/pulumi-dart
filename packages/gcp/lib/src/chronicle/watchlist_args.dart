// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_entity_population_mechanism.dart';
import 'watchlist_watchlist_user_preferences.dart';

/// {@template pulumi_chronicle_watchlist_watchlist_args_doc}
/// The set of arguments for Watchlist.
/// {@endtemplate}
/// {@macro pulumi_chronicle_watchlist_watchlist_args_doc}
class WatchlistArgs {
  /// Optional. Description of the watchlist.
  final pulumi.Input<String>? description;

  /// Required. Display name of the watchlist.
  /// Note that it must be at least one character and less than 63 characters
  /// (https://google.aip.dev/148).
  final pulumi.Input<String> displayName;

  /// Mechanism to populate entities in the watchlist.
  /// Structure is documented below.
  final pulumi.Input<WatchlistEntityPopulationMechanism>
  entityPopulationMechanism;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;

  /// Optional. Weight applied to the risk score for entities
  /// in this watchlist.
  /// The default is 1.0 if it is not specified.
  final pulumi.Input<double>? multiplyingFactor;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional. The ID to use for the watchlist,
  /// which will become the final component of the watchlist's resource name.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  final pulumi.Input<String>? watchlistId;

  /// A collection of user preferences for watchlist UI configuration.
  /// Structure is documented below.
  final pulumi.Input<WatchlistWatchlistUserPreferences>?
  watchlistUserPreferences;

  /// Creates a new [WatchlistArgs].
  /// [description] Optional. Description of the watchlist.
  /// [displayName] Required. Display name of the watchlist.
  /// [entityPopulationMechanism] Mechanism to populate entities in the watchlist.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [multiplyingFactor] Optional. Weight applied to the risk score for entities
  /// [project] The ID of the project in which the resource belongs.
  /// [watchlistId] Optional. The ID to use for the watchlist,
  /// [watchlistUserPreferences] A collection of user preferences for watchlist UI configuration.
  WatchlistArgs({
    String? description,
    required String displayName,
    required WatchlistEntityPopulationMechanism entityPopulationMechanism,
    required String instance,
    required String location,
    double? multiplyingFactor,
    String? project,
    String? watchlistId,
    WatchlistWatchlistUserPreferences? watchlistUserPreferences,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asInput<String>(displayName),
       entityPopulationMechanism =
           pulumi.Input.asInput<WatchlistEntityPopulationMechanism>(
             entityPopulationMechanism,
           ),
       instance = pulumi.Input.asInput<String>(instance),
       location = pulumi.Input.asInput<String>(location),
       multiplyingFactor = pulumi.Input.asOptionalInput<double>(
         multiplyingFactor,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       watchlistId = pulumi.Input.asOptionalInput<String>(watchlistId),
       watchlistUserPreferences =
           pulumi.Input.asOptionalInput<WatchlistWatchlistUserPreferences>(
             watchlistUserPreferences,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'entityPopulationMechanism':
          pulumi.Input.mapInputValue<
            WatchlistEntityPopulationMechanism,
            Map<String, dynamic>
          >(entityPopulationMechanism, (value) => value.toMap()),
      'instance': instance,
      'location': location,
      'multiplyingFactor': ?multiplyingFactor,
      'project': ?project,
      'watchlistId': ?watchlistId,
      'watchlistUserPreferences':
          ?pulumi.Input.mapOptionalInputValue<
            WatchlistWatchlistUserPreferences,
            Map<String, dynamic>
          >(watchlistUserPreferences, (value) => value.toMap()),
    };
  }

  factory WatchlistArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      entityPopulationMechanism: WatchlistEntityPopulationMechanism.fromMap(
        (map['entityPopulationMechanism'] as Map).cast<String, dynamic>(),
      ),
      instance: map['instance'] as String,
      location: map['location'] as String,
      multiplyingFactor: map['multiplyingFactor'] == null
          ? null
          : map['multiplyingFactor'] as double,
      project: map['project'] == null ? null : map['project'] as String,
      watchlistId: map['watchlistId'] == null
          ? null
          : map['watchlistId'] as String,
      watchlistUserPreferences: map['watchlistUserPreferences'] == null
          ? null
          : WatchlistWatchlistUserPreferences.fromMap(
              (map['watchlistUserPreferences'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
