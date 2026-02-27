// ignore_for_file: unused_element, unnecessary_cast

import '../outbound_connection_connection_properties_cross_cluster_search/outbound_connection_connection_properties_cross_cluster_search.dart';

class OutboundConnectionConnectionProperties {
  /// Configuration block for cross cluster search.
  final OutboundConnectionConnectionPropertiesCrossClusterSearch?
      crossClusterSearch;

  /// The endpoint of the remote domain, is only set when `connection_mode` is `VPC_ENDPOINT` and `accept_connection` is `TRUE`.
  final String? endpoint;

  OutboundConnectionConnectionProperties({
    this.crossClusterSearch,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crossClusterSearchValue = crossClusterSearch;
    if (crossClusterSearchValue != null) {
      map['crossClusterSearch'] = crossClusterSearchValue.toMap();
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = endpointValue;
    }
    return map;
  }

  factory OutboundConnectionConnectionProperties.fromMap(
      Map<String, dynamic> map) {
    return OutboundConnectionConnectionProperties(
      crossClusterSearch: map['crossClusterSearch'] == null
          ? null
          : OutboundConnectionConnectionPropertiesCrossClusterSearch.fromMap(
              (map['crossClusterSearch'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}
