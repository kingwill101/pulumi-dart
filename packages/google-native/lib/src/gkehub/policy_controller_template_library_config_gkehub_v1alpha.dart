// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_installation_gkehub_v1alpha.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigGkehubV1alpha {
  /// Configures the manner in which the template library is installed on the cluster.
  final PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha?
  installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigGkehubV1alpha].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigGkehubV1alpha({this.installation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': ?installation == null ? null : installation!.value,
    };
  }

  factory PolicyControllerTemplateLibraryConfigGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyControllerTemplateLibraryConfigGkehubV1alpha(
      installation: map['installation'] == null
          ? null
          : PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha.fromValue(
              map['installation'] as String,
            ),
    );
  }
}
