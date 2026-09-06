// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_scope_item.dart';

/// Describes the connection monitor endpoint scope.
class ConnectionMonitorEndpointScope {
  /// List of items which needs to be excluded from the endpoint scope.
  final pulumi.Input<List<ConnectionMonitorEndpointScopeItem>?>? exclude;
  /// List of items which needs to be included to the endpoint scope.
  final pulumi.Input<List<ConnectionMonitorEndpointScopeItem>?>? include;

  /// Creates a new [ConnectionMonitorEndpointScope].
  /// [exclude] List of items which needs to be excluded from the endpoint scope.
  /// [include] List of items which needs to be included to the endpoint scope.
  const ConnectionMonitorEndpointScope({
    this.exclude,
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorEndpointScopeItem>, List<Map<String, dynamic>>>(exclude, (value) => pulumi.Input.encodeList<ConnectionMonitorEndpointScopeItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'include': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorEndpointScopeItem>, List<Map<String, dynamic>>>(include, (value) => pulumi.Input.encodeList<ConnectionMonitorEndpointScopeItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectionMonitorEndpointScope.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointScope(
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorEndpointScopeItem>(guardedValue, (value) => ConnectionMonitorEndpointScopeItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorEndpointScopeItem>(guardedValue, (value) => ConnectionMonitorEndpointScopeItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
