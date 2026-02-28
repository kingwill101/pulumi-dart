// ignore_for_file: unused_element, unnecessary_cast

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigResponseGkehubV1beta {
  /// Configures the manner in which the template library is installed on the cluster.
  final String installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigResponseGkehubV1beta].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigResponseGkehubV1beta({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['installation'] = installation;
    return map;
  }

  factory PolicyControllerTemplateLibraryConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfigResponseGkehubV1beta(
      installation: map['installation'] as String,
    );
  }
}
