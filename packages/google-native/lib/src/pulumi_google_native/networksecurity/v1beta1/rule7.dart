// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'destination5.dart';
import 'source11.dart';

/// Specification of rules.
class Rule7 {
  /// Optional. List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  final List<Destination5>? destinations;

  /// Optional. List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ip_blocks match. If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  final List<Source11>? sources;

  Rule7({
    this.destinations,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          Input.encodeList<Destination5, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = Input.encodeList<Source11, Map<String, dynamic>>(
          sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Rule7.fromMap(Map<String, dynamic> map) {
    return Rule7(
      destinations: map['destinations'] == null
          ? null
          : Input.decodeList<Destination5>(
              map['destinations'],
              (value) =>
                  Destination5.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null
          ? null
          : Input.decodeList<Source11>(
              map['sources'],
              (value) =>
                  Source11.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
