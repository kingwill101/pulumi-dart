// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the VM Size.
class SkuProfileVMSize {
  /// Specifies the name of the VM Size.
  final pulumi.Input<String?>? name;
  /// Specifies the rank (a.k.a priority) associated with the VM Size.
  final pulumi.Input<int?>? rank;

  /// Creates a new [SkuProfileVMSize].
  /// [name] Specifies the name of the VM Size.
  /// [rank] Specifies the rank (a.k.a priority) associated with the VM Size.
  const SkuProfileVMSize({
    this.name,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'rank': ?rank,
    };
  }

  factory SkuProfileVMSize.fromMap(Map<String, dynamic> map) {
    return SkuProfileVMSize(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
