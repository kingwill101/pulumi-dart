// ignore_for_file: unused_element, unnecessary_cast

class WorkloadWorkloadPropertyFunctionalType {
  /// (Output)
  /// Output only. The functional type of a service or workload.
  final String? type;

  WorkloadWorkloadPropertyFunctionalType({
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

  factory WorkloadWorkloadPropertyFunctionalType.fromMap(
      Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyFunctionalType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
