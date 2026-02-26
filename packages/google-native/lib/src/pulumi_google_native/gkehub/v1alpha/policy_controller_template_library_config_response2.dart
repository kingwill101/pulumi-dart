// ignore_for_file: unused_element, unnecessary_cast

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigResponse2 {
  /// Configures the manner in which the template library is installed on the cluster.
  final String installation;

  PolicyControllerTemplateLibraryConfigResponse2({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['installation'] = installation;
    return map;
  }

  factory PolicyControllerTemplateLibraryConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfigResponse2(
      installation: map['installation'] as String,
    );
  }
}
