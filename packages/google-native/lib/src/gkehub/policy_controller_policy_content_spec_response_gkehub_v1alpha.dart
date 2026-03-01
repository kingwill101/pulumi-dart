// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_response_gkehub_v1alpha.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpecResponseGkehubV1alpha {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final Map<String, String> bundles;

  /// Configures the installation of the Template Library.
  final PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha
  templateLibrary;

  /// Creates a new [PolicyControllerPolicyContentSpecResponseGkehubV1alpha].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library.
  PolicyControllerPolicyContentSpecResponseGkehubV1alpha({
    required this.bundles,
    required this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': bundles,
      'templateLibrary': templateLibrary.toMap(),
    };
  }

  factory PolicyControllerPolicyContentSpecResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyControllerPolicyContentSpecResponseGkehubV1alpha(
      bundles: (map['bundles'] as Map).cast<String, String>(),
      templateLibrary:
          PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha.fromMap(
            (map['templateLibrary'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
