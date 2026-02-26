// ignore_for_file: unused_element, unnecessary_cast

/// Binauthz policy that applies to this cluster.
class PolicyBindingResponse4 {
  /// The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final String name;

  PolicyBindingResponse4({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PolicyBindingResponse4.fromMap(Map<String, dynamic> map) {
    return PolicyBindingResponse4(
      name: map['name'] as String,
    );
  }
}
