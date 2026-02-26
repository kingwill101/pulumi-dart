// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNodeConfig2 {
  /// Output only. Memory size in GB of the node.
  final double sizeGb;

  GetInstanceNodeConfig2({
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sizeGb'] = sizeGb;
    return map;
  }

  factory GetInstanceNodeConfig2.fromMap(Map<String, dynamic> map) {
    return GetInstanceNodeConfig2(
      sizeGb: map['sizeGb'] as double,
    );
  }
}
