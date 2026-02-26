// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePscInstanceConfigPscAutoConnection {
  /// The consumer network for the PSC service automation, example:
  /// "projects/vpc-host-project/global/networks/default".
  /// The consumer network might be hosted a different project than the
  /// consumer project. The API expects the consumer project specified to be
  /// the project ID (and not the project number)
  final String consumerNetwork;

  /// The status of the service connection policy.
  final String consumerNetworkStatus;

  /// The consumer project to which the PSC service automation endpoint will
  /// be created. The API expects the consumer project to be the project ID(
  /// and not the project number).
  final String consumerProject;

  /// The IP address of the PSC service automation endpoint.
  final String ipAddress;

  /// The status of the PSC service automation connection.
  final String status;

  GetInstancePscInstanceConfigPscAutoConnection({
    required this.consumerNetwork,
    required this.consumerNetworkStatus,
    required this.consumerProject,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerNetwork'] = consumerNetwork;
    map['consumerNetworkStatus'] = consumerNetworkStatus;
    map['consumerProject'] = consumerProject;
    map['ipAddress'] = ipAddress;
    map['status'] = status;
    return map;
  }

  factory GetInstancePscInstanceConfigPscAutoConnection.fromMap(
      Map<String, dynamic> map) {
    return GetInstancePscInstanceConfigPscAutoConnection(
      consumerNetwork: map['consumerNetwork'] as String,
      consumerNetworkStatus: map['consumerNetworkStatus'] as String,
      consumerProject: map['consumerProject'] as String,
      ipAddress: map['ipAddress'] as String,
      status: map['status'] as String,
    );
  }
}
