// ignore_for_file: unused_element, unnecessary_cast

/// Binauthz policy that applies to this cluster.
class PolicyBindingGkehubV1beta {
  /// The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final String? name;

  /// Creates a new [PolicyBindingGkehubV1beta].
  /// [name] The relative resource name of the binauthz platform policy to audit. GKE platform policies have the following format: `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  PolicyBindingGkehubV1beta({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory PolicyBindingGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return PolicyBindingGkehubV1beta(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
