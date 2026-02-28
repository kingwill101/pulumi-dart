// ignore_for_file: unused_element, unnecessary_cast

class GetMeshSpecEgressFilter {
  final String type;

  /// Creates a new [GetMeshSpecEgressFilter].
  /// [type] Required.
  GetMeshSpecEgressFilter({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetMeshSpecEgressFilter.fromMap(Map<String, dynamic> map) {
    return GetMeshSpecEgressFilter(
      type: map['type'] as String,
    );
  }
}
