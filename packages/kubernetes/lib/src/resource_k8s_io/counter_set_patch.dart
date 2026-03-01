// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter.dart';

/// CounterSet defines a named set of counters that are available to be used by devices defined in the ResourcePool.
///
/// The counters are not allocatable by themselves, but can be referenced by devices. When a device is allocated, the portion of counters it uses will no longer be available for use by other devices.
class CounterSetPatch {
  /// Counters defines the set of counters for this CounterSet The name of each counter must be unique in that set and must be a DNS label.
  ///
  /// The maximum number of counters is 32.
  final Map<String, Counter>? counters;
  /// Name defines the name of the counter set. It must be a DNS label.
  final String? name;

  /// Creates a new [CounterSetPatch].
  /// [counters] Counters defines the set of counters for this CounterSet The name of each counter must be unique in that set and must be a DNS label.
  /// [name] Name defines the name of the counter set. It must be a DNS label.
  CounterSetPatch({
    this.counters,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counters': ?counters == null ? null : pulumi.Input.encodeMapValues<Counter, Map<String, dynamic>>(counters!, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory CounterSetPatch.fromMap(Map<String, dynamic> map) {
    return CounterSetPatch(
      counters: map['counters'] == null ? null : pulumi.Input.decodeMapValues<Counter>(map['counters'], (value) => Counter.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

