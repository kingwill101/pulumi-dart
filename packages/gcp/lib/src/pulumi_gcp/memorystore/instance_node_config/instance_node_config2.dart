// ignore_for_file: unused_element, unnecessary_cast

class InstanceNodeConfig2 {
  /// (Output)
  /// Output only. Memory size in GB of the node.
  final double? sizeGb;

  InstanceNodeConfig2({
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

  factory InstanceNodeConfig2.fromMap(Map<String, dynamic> map) {
    return InstanceNodeConfig2(
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as double,
    );
  }
}
