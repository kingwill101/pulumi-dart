// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the VM Size.
class SkuProfileVMSize {
  /// Specifies the name of the VM Size.
  final String? name;
  /// Specifies the rank (a.k.a priority) associated with the VM Size.
  final int? rank;

  /// Creates a new [SkuProfileVMSize].
  /// [name] Specifies the name of the VM Size.
  /// [rank] Specifies the rank (a.k.a priority) associated with the VM Size.
  SkuProfileVMSize({
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
      name: map['name'] == null ? null : map['name'] as String,
      rank: map['rank'] == null ? null : map['rank'] as int,
    );
  }
}

