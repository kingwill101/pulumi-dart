// ignore_for_file: unused_element, unnecessary_cast

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle {
  /// The name of the bundle.
  final String bundleName;

  /// The set of namespaces to be exempted from the bundle.
  final List<String>? exemptedNamespaces;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle].
  /// [bundleName] The name of the bundle.
  /// [exemptedNamespaces] The set of namespaces to be exempted from the bundle.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle({
    required this.bundleName,
    this.exemptedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleName': bundleName,
      'exemptedNamespaces': ?exemptedNamespaces,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle(
      bundleName: map['bundleName'] as String,
      exemptedNamespaces: map['exemptedNamespaces'] == null
          ? null
          : (map['exemptedNamespaces'] as List).cast<String>(),
    );
  }
}
