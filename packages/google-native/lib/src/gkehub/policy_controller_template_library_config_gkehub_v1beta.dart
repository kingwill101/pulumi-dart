// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_installation_gkehub_v1beta.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigGkehubV1beta {
  /// Configures the manner in which the template library is installed on the cluster.
  final PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta?
      installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigGkehubV1beta].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigGkehubV1beta({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final installationValue = installation;
    if (installationValue != null) {
      map['installation'] = installationValue.value;
    }
    return map;
  }

  factory PolicyControllerTemplateLibraryConfigGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfigGkehubV1beta(
      installation: map['installation'] == null
          ? null
          : PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta
              .fromValue(map['installation'] as String),
    );
  }
}
