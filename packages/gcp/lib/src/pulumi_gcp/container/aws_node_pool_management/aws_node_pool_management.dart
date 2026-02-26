// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolManagement {
  /// Optional. Whether or not the nodes will be automatically repaired.
  final bool? autoRepair;

  AwsNodePoolManagement({
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

  factory AwsNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
    );
  }
}
