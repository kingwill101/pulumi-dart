// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNodeConfigMemorystore {
  /// Output only. Memory size in GB of the node.
  final double sizeGb;

  GetInstanceNodeConfigMemorystore({
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sizeGb'] = sizeGb;
    return map;
  }

  factory GetInstanceNodeConfigMemorystore.fromMap(Map<String, dynamic> map) {
    return GetInstanceNodeConfigMemorystore(
      sizeGb: map['sizeGb'] as double,
    );
  }
}
