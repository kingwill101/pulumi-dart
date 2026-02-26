// ignore_for_file: unused_element, unnecessary_cast

class FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding {
  /// The relative resource name of the binauthz platform policy to audit. GKE
  /// platform policies have the following format:
  /// `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  final String? name;

  FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding({
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

  factory FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding.fromMap(
      Map<String, dynamic> map) {
    return FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
