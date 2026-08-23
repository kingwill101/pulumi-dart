// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_match_path_destination.dart';
import 'network_insights_access_scope_match_path_source.dart';

class NetworkInsightsAccessScopeMatchPath {
  /// Path statement for the destination.
  /// See `source` and `destination` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeMatchPathDestination>? destination;
  /// Path statement for the source.
  /// See `source` and `destination` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeMatchPathSource>? source;

  /// Creates a new [NetworkInsightsAccessScopeMatchPath].
  /// [destination] Path statement for the destination.
  /// [source] Path statement for the source.
  const NetworkInsightsAccessScopeMatchPath({
    this.destination,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeMatchPathDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeMatchPathSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAccessScopeMatchPath.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeMatchPath(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeMatchPathDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeMatchPathSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
