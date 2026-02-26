// ignore_for_file: unused_element, unnecessary_cast

/// Binauthz policy that applies to this cluster.
class PolicyBindingResponse3 {
  /// The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final String name;

  PolicyBindingResponse3({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PolicyBindingResponse3.fromMap(Map<String, dynamic> map) {
    return PolicyBindingResponse3(
      name: map['name'] as String,
    );
  }
}
