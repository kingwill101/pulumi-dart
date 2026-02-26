// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkPscConfig {
  /// Consumer service project in which the Private Service Connect endpoint
  /// would be set up. This is optional, and only relevant in case the network
  /// is a shared VPC. If this is not specified, the endpoint would be set up
  /// in the VPC host project.
  final String? endpointProject;

  InstanceNetworkPscConfig({
    this.endpointProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointProjectValue = endpointProject;
    if (endpointProjectValue != null) {
      map['endpointProject'] = endpointProjectValue;
    }
    return map;
  }

  factory InstanceNetworkPscConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkPscConfig(
      endpointProject: map['endpointProject'] == null
          ? null
          : map['endpointProject'] as String,
    );
  }
}
