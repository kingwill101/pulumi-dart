// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_gkehub_v1alpha.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpecGkehubV1alpha {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final Map<String, String>? bundles;

  /// Configures the installation of the Template Library.
  final PolicyControllerTemplateLibraryConfigGkehubV1alpha? templateLibrary;

  PolicyControllerPolicyContentSpecGkehubV1alpha({
    this.bundles,
    this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bundlesValue = bundles;
    if (bundlesValue != null) {
      map['bundles'] = bundlesValue;
    }
    final templateLibraryValue = templateLibrary;
    if (templateLibraryValue != null) {
      map['templateLibrary'] = templateLibraryValue.toMap();
    }
    return map;
  }

  factory PolicyControllerPolicyContentSpecGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpecGkehubV1alpha(
      bundles: map['bundles'] == null
          ? null
          : (map['bundles'] as Map).cast<String, String>(),
      templateLibrary: map['templateLibrary'] == null
          ? null
          : PolicyControllerTemplateLibraryConfigGkehubV1alpha.fromMap(
              (map['templateLibrary'] as Map).cast<String, dynamic>()),
    );
  }
}
