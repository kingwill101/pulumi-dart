// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  final String bundle;

  /// The set of namespaces to be exempted from the bundle.
  final List<String> exemptedNamespaces;

  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundle,
    required this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundle'] = bundle;
    map['exemptedNamespaces'] = exemptedNamespaces;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundle: map['bundle'] as String,
      exemptedNamespaces: (map['exemptedNamespaces'] as List).cast<String>(),
    );
  }
}
