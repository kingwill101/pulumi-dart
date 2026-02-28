// ignore_for_file: unused_element, unnecessary_cast

class GCPolicyMaxVersion {
  /// Number of version before applying the GC policy.
  ///
  /// -----
  /// `gc_rules` include 2 fields:
  final int number;

  /// Creates a new [GCPolicyMaxVersion].
  /// [number] Number of version before applying the GC policy.
  GCPolicyMaxVersion({
    required this.number,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['number'] = number;
    return map;
  }

  factory GCPolicyMaxVersion.fromMap(Map<String, dynamic> map) {
    return GCPolicyMaxVersion(
      number: map['number'] as int,
    );
  }
}
