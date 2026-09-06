// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_filter_item_response.dart';

/// Describes the connection monitor endpoint filter.
class ConnectionMonitorEndpointFilterResponse {
  /// List of items in the filter.
  final pulumi.Input<List<ConnectionMonitorEndpointFilterItemResponse>?>? items;
  /// The behavior of the endpoint filter. Currently only 'Include' is supported.
  final pulumi.Input<String?>? type;

  /// Creates a new [ConnectionMonitorEndpointFilterResponse].
  /// [items] List of items in the filter.
  /// [type] The behavior of the endpoint filter. Currently only 'Include' is supported.
  const ConnectionMonitorEndpointFilterResponse({
    this.items,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorEndpointFilterItemResponse>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ConnectionMonitorEndpointFilterItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpointFilterResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointFilterResponse(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorEndpointFilterItemResponse>(guardedValue, (value) => ConnectionMonitorEndpointFilterItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
