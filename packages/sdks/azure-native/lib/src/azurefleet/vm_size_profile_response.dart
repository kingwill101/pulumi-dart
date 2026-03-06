// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifications about a VM Size. This will also contain the corresponding rank and weight in future.
class VmSizeProfileResponse {
  /// The Sku name (e.g. 'Standard_DS1_v2')
  final pulumi.Input<String> name;
  /// The rank of the VM size. This is used with 'RegularPriorityAllocationStrategy.Prioritized'
  /// The lower the number, the higher the priority. Starting with 0.
  final pulumi.Input<int>? rank;

  /// Creates a new [VmSizeProfileResponse].
  /// [name] The Sku name (e.g. 'Standard_DS1_v2')
  /// [rank] The rank of the VM size. This is used with 'RegularPriorityAllocationStrategy.Prioritized'
  const VmSizeProfileResponse({
    required this.name,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rank': ?rank,
    };
  }

  factory VmSizeProfileResponse.fromMap(Map<String, dynamic> map) {
    return VmSizeProfileResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

