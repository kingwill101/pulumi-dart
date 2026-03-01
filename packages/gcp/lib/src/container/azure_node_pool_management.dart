// ignore_for_file: unused_element, unnecessary_cast


class AzureNodePoolManagement {
  /// Optional. Whether or not the nodes will be automatically repaired.
  final bool? autoRepair;

  /// Creates a new [AzureNodePoolManagement].
  /// [autoRepair] Optional. Whether or not the nodes will be automatically repaired.
  AzureNodePoolManagement({
    this.autoRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
    };
  }

  factory AzureNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
    );
  }
}

