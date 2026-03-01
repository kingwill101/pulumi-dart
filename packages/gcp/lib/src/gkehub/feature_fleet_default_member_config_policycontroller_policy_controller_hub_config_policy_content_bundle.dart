// ignore_for_file: unused_element, unnecessary_cast


class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  /// The identifier for this object. Format specified above.
  final String bundle;
  /// The set of namespaces to be exempted from the bundle.
  final List<String>? exemptedNamespaces;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle].
  /// [bundle] The identifier for this object. Format specified above.
  /// [exemptedNamespaces] The set of namespaces to be exempted from the bundle.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundle,
    this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundle': bundle,
      'exemptedNamespaces': ?exemptedNamespaces,
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundle: map['bundle'] as String,
      exemptedNamespaces: map['exemptedNamespaces'] == null ? null : (map['exemptedNamespaces'] as List).cast<String>(),
    );
  }
}

