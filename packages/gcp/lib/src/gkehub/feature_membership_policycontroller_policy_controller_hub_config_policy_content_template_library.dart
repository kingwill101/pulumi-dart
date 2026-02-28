// ignore_for_file: unused_element, unnecessary_cast


class FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary {
  /// Configures the manner in which the template library is installed on the cluster. Must be one of `ALL`, `NOT_INSTALLED` or `INSTALLATION_UNSPECIFIED`. Defaults to `ALL`.
  final String? installation;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary].
  /// [installation] Configures the manner in which the template library is installed on the cluster. Must be one of `ALL`, `NOT_INSTALLED` or `INSTALLATION_UNSPECIFIED`. Defaults to `ALL`.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': ?installation,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary(
      installation: map['installation'] == null ? null : map['installation'] as String,
    );
  }
}

