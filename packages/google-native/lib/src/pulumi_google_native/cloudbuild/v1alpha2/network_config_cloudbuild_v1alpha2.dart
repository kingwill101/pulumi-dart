// ignore_for_file: unused_element, unnecessary_cast

/// Network describes the network configuration for a `WorkerPool`.
class NetworkConfigCloudbuildV1alpha2 {
  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to WorkerPool.project_id on the default network. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number, such as `12345`, and {network} is the name of a VPC network in the project.
  final String peeredNetwork;

  NetworkConfigCloudbuildV1alpha2({
    required this.peeredNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['peeredNetwork'] = peeredNetwork;
    return map;
  }

  factory NetworkConfigCloudbuildV1alpha2.fromMap(Map<String, dynamic> map) {
    return NetworkConfigCloudbuildV1alpha2(
      peeredNetwork: map['peeredNetwork'] as String,
    );
  }
}
