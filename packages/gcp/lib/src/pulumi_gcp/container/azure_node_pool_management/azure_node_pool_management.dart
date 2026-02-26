// ignore_for_file: unused_element, unnecessary_cast

class AzureNodePoolManagement {
  /// Optional. Whether or not the nodes will be automatically repaired.
  final bool? autoRepair;

  AzureNodePoolManagement({
    this.autoRepair,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRepairValue = autoRepair;
    if (autoRepairValue != null) {
      map['autoRepair'] = autoRepairValue;
    }
    return map;
  }

  factory AzureNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
    );
  }
}
