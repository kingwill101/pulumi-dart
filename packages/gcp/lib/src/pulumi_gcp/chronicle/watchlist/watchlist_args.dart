// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../watchlist_entity_population_mechanism/watchlist_entity_population_mechanism.dart';
import '../watchlist_watchlist_user_preferences/watchlist_watchlist_user_preferences.dart';

/// The set of arguments for Watchlist.
class WatchlistArgs {
  /// Optional. Description of the watchlist.
  final Input<String>? description;

  /// Required. Display name of the watchlist.
  /// Note that it must be at least one character and less than 63 characters
  /// (https://google.aip.dev/148).
  final Input<String> displayName;

  /// Mechanism to populate entities in the watchlist.
  /// Structure is documented below.
  final Input<WatchlistEntityPopulationMechanism> entityPopulationMechanism;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final Input<String> location;

  /// Optional. Weight applied to the risk score for entities
  /// in this watchlist.
  /// The default is 1.0 if it is not specified.
  final Input<double>? multiplyingFactor;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. The ID to use for the watchlist,
  /// which will become the final component of the watchlist's resource name.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  final Input<String>? watchlistId;

  /// A collection of user preferences for watchlist UI configuration.
  /// Structure is documented below.
  final Input<WatchlistWatchlistUserPreferences>? watchlistUserPreferences;

  WatchlistArgs({
    this.description,
    required this.displayName,
    required this.entityPopulationMechanism,
    required this.instance,
    required this.location,
    this.multiplyingFactor,
    this.project,
    this.watchlistId,
    this.watchlistUserPreferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['entityPopulationMechanism'] = Input.mapInputValue<
            WatchlistEntityPopulationMechanism, Map<String, dynamic>>(
        entityPopulationMechanism, (value) => value.toMap());
    map['instance'] = instance;
    map['location'] = location;
    final multiplyingFactorValue = multiplyingFactor;
    if (multiplyingFactorValue != null) {
      map['multiplyingFactor'] = multiplyingFactorValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final watchlistIdValue = watchlistId;
    if (watchlistIdValue != null) {
      map['watchlistId'] = watchlistIdValue;
    }
    final watchlistUserPreferencesValue = watchlistUserPreferences;
    if (watchlistUserPreferencesValue != null) {
      map['watchlistUserPreferences'] = Input.mapOptionalInputValue<
              WatchlistWatchlistUserPreferences, Map<String, dynamic>>(
          watchlistUserPreferencesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WatchlistArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      entityPopulationMechanism:
          Input.asInput<WatchlistEntityPopulationMechanism>(
              map['entityPopulationMechanism']),
      instance: Input.asInput<String>(map['instance']),
      location: Input.asInput<String>(map['location']),
      multiplyingFactor:
          Input.asOptionalInput<double>(map['multiplyingFactor']),
      project: Input.asOptionalInput<String>(map['project']),
      watchlistId: Input.asOptionalInput<String>(map['watchlistId']),
      watchlistUserPreferences:
          Input.asOptionalInput<WatchlistWatchlistUserPreferences>(
              map['watchlistUserPreferences']),
    );
  }
}
