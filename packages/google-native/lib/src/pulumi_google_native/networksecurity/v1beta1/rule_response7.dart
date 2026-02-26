// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'destination_response5.dart';
import 'source_response11.dart';

/// Specification of rules.
class RuleResponse7 {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final List<DestinationResponse5> destinations;

  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final List<SourceResponse11> sources;

  RuleResponse7({
    required this.destinations,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] =
        Input.encodeList<DestinationResponse5, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    map['sources'] = Input.encodeList<SourceResponse11, Map<String, dynamic>>(
        sources, (value) => value.toMap());
    return map;
  }

  factory RuleResponse7.fromMap(Map<String, dynamic> map) {
    return RuleResponse7(
      destinations: Input.decodeList<DestinationResponse5>(
          map['destinations'],
          (value) => DestinationResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      sources: Input.decodeList<SourceResponse11>(
          map['sources'],
          (value) =>
              SourceResponse11.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
