// ignore_for_file: unused_element, unnecessary_cast

class MeshSpecEgressFilter {
  /// Egress filter type. By default, the type is `DROP_ALL`. Valid values are `ALLOW_ALL` and `DROP_ALL`.
  final String? type;

  MeshSpecEgressFilter({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory MeshSpecEgressFilter.fromMap(Map<String, dynamic> map) {
    return MeshSpecEgressFilter(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
