// ignore_for_file: unused_element, unnecessary_cast

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  /// The identifier for this object. Format specified above.
  final String bundle;

  /// The set of namespaces to be exempted from the bundle.
  final List<String>? exemptedNamespaces;

  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundle,
    this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundle'] = bundle;
    final exemptedNamespacesValue = exemptedNamespaces;
    if (exemptedNamespacesValue != null) {
      map['exemptedNamespaces'] = exemptedNamespacesValue;
    }
    return map;
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundle: map['bundle'] as String,
      exemptedNamespaces: map['exemptedNamespaces'] == null
          ? null
          : (map['exemptedNamespaces'] as List).cast<String>(),
    );
  }
}
