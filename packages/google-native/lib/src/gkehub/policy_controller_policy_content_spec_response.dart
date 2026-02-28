// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_response.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpecResponse {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final Map<String, String> bundles;

  /// Configures the installation of the Template Library.
  final PolicyControllerTemplateLibraryConfigResponse templateLibrary;

  /// Creates a new [PolicyControllerPolicyContentSpecResponse].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library.
  PolicyControllerPolicyContentSpecResponse({
    required this.bundles,
    required this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundles'] = bundles;
    map['templateLibrary'] = templateLibrary.toMap();
    return map;
  }

  factory PolicyControllerPolicyContentSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpecResponse(
      bundles: (map['bundles'] as Map).cast<String, String>(),
      templateLibrary: PolicyControllerTemplateLibraryConfigResponse.fromMap(
          (map['templateLibrary'] as Map).cast<String, dynamic>()),
    );
  }
}
