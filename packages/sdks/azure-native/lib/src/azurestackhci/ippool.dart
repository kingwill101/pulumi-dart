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
  IPPool({
    this.end,
    this.ipPoolType,
    this.name,
    this.start,
  });

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
      end: map['end'] == null ? null : (map['end']! as String).input(),
      ipPoolType: map['ipPoolType'] == null ? null : (map['ipPoolType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      start: map['start'] == null ? null : (map['start']! as String).input(),
    );
  }
}

