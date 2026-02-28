// ignore_for_file: unused_element, unnecessary_cast

class WorkloadWorkloadPropertyIdentity {
  /// (Output)
  /// The principal of the identity.
  final String? principal;

  /// Creates a new [WorkloadWorkloadPropertyIdentity].
  /// [principal] (Output)
  WorkloadWorkloadPropertyIdentity({
    this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final principalValue = principal;
    if (principalValue != null) {
      map['principal'] = principalValue;
    }
    return map;
  }

  factory WorkloadWorkloadPropertyIdentity.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyIdentity(
      principal: map['principal'] == null ? null : map['principal'] as String,
    );
  }
}
