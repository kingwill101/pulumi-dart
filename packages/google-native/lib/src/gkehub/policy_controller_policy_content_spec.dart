// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpec {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final Map<String, String>? bundles;

  /// Configures the installation of the Template Library.
  final PolicyControllerTemplateLibraryConfig? templateLibrary;

  /// Creates a new [PolicyControllerPolicyContentSpec].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library.
  PolicyControllerPolicyContentSpec({
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

  factory PolicyControllerPolicyContentSpec.fromMap(Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpec(
      bundles: map['bundles'] == null
          ? null
          : (map['bundles'] as Map).cast<String, String>(),
      templateLibrary: map['templateLibrary'] == null
          ? null
          : PolicyControllerTemplateLibraryConfig.fromMap(
              (map['templateLibrary'] as Map).cast<String, dynamic>()),
    );
  }
}
