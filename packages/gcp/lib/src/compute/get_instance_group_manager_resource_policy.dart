// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceGroupManagerResourcePolicy {
  /// The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  final String workloadPolicy;

  /// Creates a new [GetInstanceGroupManagerResourcePolicy].
  /// [workloadPolicy] The URL of the workload policy that is specified for this managed instance group. It can be a full or partial URL.
  GetInstanceGroupManagerResourcePolicy({required this.workloadPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workloadPolicy': workloadPolicy};
  }

  factory GetInstanceGroupManagerResourcePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceGroupManagerResourcePolicy(
      workloadPolicy: map['workloadPolicy'] as String,
    );
  }
}
