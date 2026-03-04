// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes IPPool
class IPPool {
  /// End of the IP address pool
  final pulumi.Input<String>? end;

  /// Type of the IP Pool [vm, vippool]
  final pulumi.Input<String>? ipPoolType;

  /// Name of the IP-Pool
  final pulumi.Input<String>? name;

  /// Start of the IP address pool
  final pulumi.Input<String>? start;

  /// Creates a new [IPPool].
  /// [end] End of the IP address pool
  /// [ipPoolType] Type of the IP Pool [vm, vippool]
  /// [name] Name of the IP-Pool
  /// [start] Start of the IP address pool
  IPPool({this.end, this.ipPoolType, this.name, this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'ipPoolType': ?ipPoolType,
      'name': ?name,
      'start': ?start,
    };
  }

  factory IPPool.fromMap(Map<String, dynamic> map) {
    return IPPool(
      end: (() {
        final guardedValue = map['end'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipPoolType: (() {
        final guardedValue = map['ipPoolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      start: (() {
        final guardedValue = map['start'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
