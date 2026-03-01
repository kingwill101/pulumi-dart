// ignore_for_file: unused_element, unnecessary_cast


/// Specifications about a VM Size. This will also contain the corresponding rank and weight in future.
class VmSizeProfile {
  /// The Sku name (e.g. 'Standard_DS1_v2')
  final String name;
  /// The rank of the VM size. This is used with 'RegularPriorityAllocationStrategy.Prioritized'
  /// The lower the number, the higher the priority. Starting with 0.
  final int? rank;

  /// Creates a new [VmSizeProfile].
  /// [name] The Sku name (e.g. 'Standard_DS1_v2')
  /// [rank] The rank of the VM size. This is used with 'RegularPriorityAllocationStrategy.Prioritized'
  VmSizeProfile({
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
      name: map['name'] as String,
      rank: map['rank'] == null ? null : map['rank'] as int,
    );
  }
}

