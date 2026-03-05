// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_connection_connection_properties_cross_cluster_search.dart';

class OutboundConnectionConnectionProperties {
  /// Configuration block for cross cluster search.
  final pulumi.Input<OutboundConnectionConnectionPropertiesCrossClusterSearch>? crossClusterSearch;
  /// The endpoint of the remote domain, is only set when `connection_mode` is `VPC_ENDPOINT` and `accept_connection` is `TRUE`.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [OutboundConnectionConnectionProperties].
  /// [crossClusterSearch] Configuration block for cross cluster search.
  /// [endpoint] The endpoint of the remote domain, is only set when `connection_mode` is `VPC_ENDPOINT` and `accept_connection` is `TRUE`.
  OutboundConnectionConnectionProperties({
    this.crossClusterSearch,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossClusterSearch': ?pulumi.Input.mapOptionalInputValue<OutboundConnectionConnectionPropertiesCrossClusterSearch, Map<String, dynamic>>(crossClusterSearch, (value) => value.toMap()),
      'endpoint': ?endpoint,
    };
  }

  factory OutboundConnectionConnectionProperties.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionConnectionProperties(
      crossClusterSearch: (() { final guardedValue = map['crossClusterSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutboundConnectionConnectionPropertiesCrossClusterSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

