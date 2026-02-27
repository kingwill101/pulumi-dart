// ignore_for_file: unused_element, unnecessary_cast

/// Binauthz policy that applies to this cluster.
class PolicyBindingGkehubV1 {
  /// The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final String? name;

  PolicyBindingGkehubV1({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory PolicyBindingGkehubV1.fromMap(Map<String, dynamic> map) {
    return PolicyBindingGkehubV1(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
