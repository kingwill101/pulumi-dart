// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response_networksecurity_v1.dart';
import 'source_response_networksecurity_v1.dart';

/// Specification of rules.
class RuleResponseNetworksecurityV1 {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final List<DestinationResponseNetworksecurityV1> destinations;

  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final List<SourceResponseNetworksecurityV1> sources;

  RuleResponseNetworksecurityV1({
    required this.destinations,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = pulumi.Input.encodeList<
        DestinationResponseNetworksecurityV1,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    map['sources'] = pulumi.Input.encodeList<SourceResponseNetworksecurityV1,
        Map<String, dynamic>>(sources, (value) => value.toMap());
    return map;
  }

  factory RuleResponseNetworksecurityV1.fromMap(Map<String, dynamic> map) {
    return RuleResponseNetworksecurityV1(
      destinations:
          pulumi.Input.decodeList<DestinationResponseNetworksecurityV1>(
              map['destinations'],
              (value) => DestinationResponseNetworksecurityV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sources: pulumi.Input.decodeList<SourceResponseNetworksecurityV1>(
          map['sources'],
          (value) => SourceResponseNetworksecurityV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
