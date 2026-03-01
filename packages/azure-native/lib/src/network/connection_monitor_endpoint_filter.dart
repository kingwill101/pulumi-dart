// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_filter_item.dart';

/// Describes the connection monitor endpoint filter.
class ConnectionMonitorEndpointFilter {
  /// List of items in the filter.
  final List<ConnectionMonitorEndpointFilterItem>? items;
  /// The behavior of the endpoint filter. Currently only 'Include' is supported.
  final String? type;

  /// Creates a new [ConnectionMonitorEndpointFilter].
  /// [items] List of items in the filter.
  /// [type] The behavior of the endpoint filter. Currently only 'Include' is supported.
  ConnectionMonitorEndpointFilter({
    this.items,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<ConnectionMonitorEndpointFilterItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpointFilter.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointFilter(
      items: map['items'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorEndpointFilterItem>(map['items'], (value) => ConnectionMonitorEndpointFilterItem.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

