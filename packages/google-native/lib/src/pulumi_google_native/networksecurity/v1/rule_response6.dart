// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'destination_response4.dart';
import 'source_response10.dart';

/// Specification of rules.
class RuleResponse6 {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final List<DestinationResponse4> destinations;

  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final List<SourceResponse10> sources;

  RuleResponse6({
    required this.destinations,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] =
        Input.encodeList<DestinationResponse4, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    map['sources'] = Input.encodeList<SourceResponse10, Map<String, dynamic>>(
        sources, (value) => value.toMap());
    return map;
  }

  factory RuleResponse6.fromMap(Map<String, dynamic> map) {
    return RuleResponse6(
      destinations: Input.decodeList<DestinationResponse4>(
          map['destinations'],
          (value) => DestinationResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      sources: Input.decodeList<SourceResponse10>(
          map['sources'],
          (value) =>
              SourceResponse10.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
