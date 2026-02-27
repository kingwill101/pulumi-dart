// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'destination4.dart';
import 'source10.dart';

/// Specification of rules.
class Rule6 {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final List<Destination4>? destinations;

  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final List<Source10>? sources;

  Rule6({
    this.destinations,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          Input.encodeList<Destination4, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = Input.encodeList<Source10, Map<String, dynamic>>(
          sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Rule6.fromMap(Map<String, dynamic> map) {
    return Rule6(
      destinations: map['destinations'] == null
          ? null
          : Input.decodeList<Destination4>(
              map['destinations'],
              (value) =>
                  Destination4.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null
          ? null
          : Input.decodeList<Source10>(
              map['sources'],
              (value) =>
                  Source10.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
