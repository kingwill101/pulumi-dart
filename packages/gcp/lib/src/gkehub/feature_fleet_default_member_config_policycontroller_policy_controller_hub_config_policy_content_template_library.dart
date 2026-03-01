// ignore_for_file: unused_element, unnecessary_cast

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary {
  /// Configures the manner in which the template library is installed on the cluster.
  /// Possible values are: `INSTALLATION_UNSPECIFIED`, `NOT_INSTALLED`, `ALL`.
  final String? installation;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'installation': ?installation};
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary(
      installation: map['installation'] == null
          ? null
          : map['installation'] as String,
    );
  }
}
