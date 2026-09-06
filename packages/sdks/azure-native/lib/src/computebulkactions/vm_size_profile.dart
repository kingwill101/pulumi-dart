// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifications about a VM Size. This will also contain the corresponding rank and weight in future.
class VmSizeProfile {
  /// The Sku name (e.g. 'Standard_DS1_v2')
  final pulumi.Input<String> name;
  /// The rank of the VM size. This is used with 'AllocationStrategy.Prioritized'
  /// The lower the number, the higher the priority. Starting with 0.
  final pulumi.Input<int?>? rank;

  /// Creates a new [VmSizeProfile].
  /// [name] The Sku name (e.g. 'Standard_DS1_v2')
  /// [rank] The rank of the VM size. This is used with 'AllocationStrategy.Prioritized'
  const VmSizeProfile({
    required this.name,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rank': ?rank,
    };
  }

  factory VmSizeProfile.fromMap(Map<String, dynamic> map) {
    return VmSizeProfile(
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
