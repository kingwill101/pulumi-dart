// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_scope_item_response.dart';

/// Describes the connection monitor endpoint scope.
class ConnectionMonitorEndpointScopeResponse {
  /// List of items which needs to be excluded from the endpoint scope.
  final pulumi.Input<List<ConnectionMonitorEndpointScopeItemResponse>>? exclude;
  /// List of items which needs to be included to the endpoint scope.
  final pulumi.Input<List<ConnectionMonitorEndpointScopeItemResponse>>? include;

  /// Creates a new [ConnectionMonitorEndpointScopeResponse].
  /// [exclude] List of items which needs to be excluded from the endpoint scope.
  /// [include] List of items which needs to be included to the endpoint scope.
  ConnectionMonitorEndpointScopeResponse({
    this.exclude,
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorEndpointScopeItemResponse>, List<Map<String, dynamic>>>(exclude, (value) => pulumi.Input.encodeList<ConnectionMonitorEndpointScopeItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'include': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorEndpointScopeItemResponse>, List<Map<String, dynamic>>>(include, (value) => pulumi.Input.encodeList<ConnectionMonitorEndpointScopeItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectionMonitorEndpointScopeResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointScopeResponse(
      exclude: map['exclude'] == null ? null : (pulumi.Input.decodeList<ConnectionMonitorEndpointScopeItemResponse>(map['exclude']!, (value) => ConnectionMonitorEndpointScopeItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      include: map['include'] == null ? null : (pulumi.Input.decodeList<ConnectionMonitorEndpointScopeItemResponse>(map['include']!, (value) => ConnectionMonitorEndpointScopeItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

