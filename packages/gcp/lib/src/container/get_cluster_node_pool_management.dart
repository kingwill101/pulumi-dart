// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolManagement {
  /// Whether the nodes will be automatically repaired. Enabled by default.
  final bool autoRepair;
  /// Whether the nodes will be automatically upgraded. Enabled by default.
  final bool autoUpgrade;

  /// Creates a new [GetClusterNodePoolManagement].
  /// [autoRepair] Whether the nodes will be automatically repaired. Enabled by default.
  /// [autoUpgrade] Whether the nodes will be automatically upgraded. Enabled by default.
  GetClusterNodePoolManagement({
    required this.autoRepair,
    required this.autoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': autoRepair,
      'autoUpgrade': autoUpgrade,
    };
  }

  factory GetClusterNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolManagement(
      autoRepair: map['autoRepair'] as bool,
      autoUpgrade: map['autoUpgrade'] as bool,
    );
  }
}

