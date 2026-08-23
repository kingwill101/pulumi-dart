// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_exclude_path_destination.dart';
import 'network_insights_access_scope_exclude_path_source.dart';
import 'network_insights_access_scope_exclude_path_through_resource.dart';

class NetworkInsightsAccessScopeExcludePath {
  /// Path statement for the destination.
  /// See `source` and `destination` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathDestination>? destination;
  /// Path statement for the source.
  /// See `source` and `destination` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathSource>? source;
  /// Path statement for through resources.
  /// See `throughResources` below for details.
  final pulumi.Input<List<NetworkInsightsAccessScopeExcludePathThroughResource>>? throughResources;

  /// Creates a new [NetworkInsightsAccessScopeExcludePath].
  /// [destination] Path statement for the destination.
  /// [source] Path statement for the source.
  /// [throughResources] Path statement for through resources.
  const NetworkInsightsAccessScopeExcludePath({
    this.destination,
    this.source,
    this.throughResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'throughResources': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAccessScopeExcludePathThroughResource>, List<Map<String, dynamic>>>(throughResources, (value) => pulumi.Input.encodeList<NetworkInsightsAccessScopeExcludePathThroughResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAccessScopeExcludePath.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeExcludePath(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throughResources: (() { final guardedValue = map['throughResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAccessScopeExcludePathThroughResource>(guardedValue, (value) => NetworkInsightsAccessScopeExcludePathThroughResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
