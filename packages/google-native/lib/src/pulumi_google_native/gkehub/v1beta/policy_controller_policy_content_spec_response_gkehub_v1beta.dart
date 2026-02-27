// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_response_gkehub_v1beta.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpecResponseGkehubV1beta {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final Map<String, String> bundles;

  /// Configures the installation of the Template Library.
  final PolicyControllerTemplateLibraryConfigResponseGkehubV1beta
      templateLibrary;

  PolicyControllerPolicyContentSpecResponseGkehubV1beta({
    required this.bundles,
    required this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundles'] = bundles;
    map['templateLibrary'] = templateLibrary.toMap();
    return map;
  }

  factory PolicyControllerPolicyContentSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpecResponseGkehubV1beta(
      bundles: (map['bundles'] as Map).cast<String, String>(),
      templateLibrary:
          PolicyControllerTemplateLibraryConfigResponseGkehubV1beta.fromMap(
              (map['templateLibrary'] as Map).cast<String, dynamic>()),
    );
  }
}
