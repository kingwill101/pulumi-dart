// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../record_set_routing_policy/record_set_routing_policy.dart';

/// The set of arguments for RecordSet.
class RecordSetArgs {
  /// The name of the zone in which this record set will
  /// reside.
  final Input<String> managedZone;

  /// The DNS name this record set will apply to.
  final Input<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The configuration for steering traffic based on query.
  /// Now you can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type.
  /// Structure is documented below.
  final Input<RecordSetRoutingPolicy>? routingPolicy;
  final Input<List<String>>? rrdatas;

  /// The time-to-live of this record set (seconds).
  final Input<int>? ttl;

  /// The DNS record set type.
  ///
  /// - - -
  final Input<String> type;

  RecordSetArgs({
    required this.managedZone,
    required this.name,
    this.project,
    this.routingPolicy,
    this.rrdatas,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final routingPolicyValue = routingPolicy;
    if (routingPolicyValue != null) {
      map['routingPolicy'] = Input.mapOptionalInputValue<RecordSetRoutingPolicy,
          Map<String, dynamic>>(routingPolicyValue, (value) => value.toMap());
    }
    final rrdatasValue = rrdatas;
    if (rrdatasValue != null) {
      map['rrdatas'] = rrdatasValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    map['type'] = type;
    return map;
  }

  factory RecordSetArgs.fromMap(Map<String, dynamic> map) {
    return RecordSetArgs(
      managedZone: Input.asInput<String>(map['managedZone']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      routingPolicy:
          Input.asOptionalInput<RecordSetRoutingPolicy>(map['routingPolicy']),
      rrdatas: Input.asOptionalInput<List<String>>(map['rrdatas']),
      ttl: Input.asOptionalInput<int>(map['ttl']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
