// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_scope_item.dart';

/// Describes the connection monitor endpoint scope.
class ConnectionMonitorEndpointScope {
  /// List of items which needs to be excluded from the endpoint scope.
  final List<ConnectionMonitorEndpointScopeItem>? exclude;
  /// List of items which needs to be included to the endpoint scope.
  final List<ConnectionMonitorEndpointScopeItem>? include;

  /// Creates a new [ConnectionMonitorEndpointScope].
  /// [exclude] List of items which needs to be excluded from the endpoint scope.
  /// [include] List of items which needs to be included to the endpoint scope.
  ConnectionMonitorEndpointScope({
    this.exclude,
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?exclude == null ? null : pulumi.Input.encodeList<ConnectionMonitorEndpointScopeItem, Map<String, dynamic>>(exclude!, (value) => value.toMap()),
      'include': ?include == null ? null : pulumi.Input.encodeList<ConnectionMonitorEndpointScopeItem, Map<String, dynamic>>(include!, (value) => value.toMap()),
    };
  }

  factory ConnectionMonitorEndpointScope.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointScope(
      exclude: map['exclude'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorEndpointScopeItem>(map['exclude'], (value) => ConnectionMonitorEndpointScopeItem.fromMap((value as Map).cast<String, dynamic>())),
      include: map['include'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorEndpointScopeItem>(map['include'], (value) => ConnectionMonitorEndpointScopeItem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

