// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_installation3.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfig3 {
  /// Configures the manner in which the template library is installed on the cluster.
  final PolicyControllerTemplateLibraryConfigInstallation3? installation;

  PolicyControllerTemplateLibraryConfig3({
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

  factory PolicyControllerTemplateLibraryConfig3.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfig3(
      installation: map['installation'] == null
          ? null
          : PolicyControllerTemplateLibraryConfigInstallation3.fromValue(
              map['installation'] as String),
    );
  }
}
