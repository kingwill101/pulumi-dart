// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_filter_item_response.dart';

/// Describes the connection monitor endpoint filter.
class ConnectionMonitorEndpointFilterResponse {
  /// List of items in the filter.
  final List<ConnectionMonitorEndpointFilterItemResponse>? items;
  /// The behavior of the endpoint filter. Currently only 'Include' is supported.
  final String? type;

  /// Creates a new [ConnectionMonitorEndpointFilterResponse].
  /// [items] List of items in the filter.
  /// [type] The behavior of the endpoint filter. Currently only 'Include' is supported.
  ConnectionMonitorEndpointFilterResponse({
    this.items,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<ConnectionMonitorEndpointFilterItemResponse, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpointFilterResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointFilterResponse(
      items: map['items'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorEndpointFilterItemResponse>(map['items'], (value) => ConnectionMonitorEndpointFilterItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

