// ignore_for_file: unused_element, unnecessary_cast

class InstanceNodeConfigMemorystore {
  /// (Output)
  /// Output only. Memory size in GB of the node.
  final double? sizeGb;

  InstanceNodeConfigMemorystore({
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    return map;
  }

  factory InstanceNodeConfigMemorystore.fromMap(Map<String, dynamic> map) {
    return InstanceNodeConfigMemorystore(
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as double,
    );
  }
}
