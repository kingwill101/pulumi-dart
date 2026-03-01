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

  /// Creates a new [GetInstancePscInstanceConfigPscAutoConnection].
  /// [consumerNetwork] The consumer network for the PSC service automation, example:
  /// [consumerNetworkStatus] The status of the service connection policy.
  /// [consumerProject] The consumer project to which the PSC service automation endpoint will
  /// [ipAddress] The IP address of the PSC service automation endpoint.
  /// [status] The status of the PSC service automation connection.
  GetInstancePscInstanceConfigPscAutoConnection({
    required this.consumerNetwork,
    required this.consumerNetworkStatus,
    required this.consumerProject,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'consumerNetworkStatus': consumerNetworkStatus,
      'consumerProject': consumerProject,
      'ipAddress': ipAddress,
      'status': status,
    };
  }

  factory GetInstancePscInstanceConfigPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return GetInstancePscInstanceConfigPscAutoConnection(
      consumerNetwork: map['consumerNetwork'] as String,
      consumerNetworkStatus: map['consumerNetworkStatus'] as String,
      consumerProject: map['consumerProject'] as String,
      ipAddress: map['ipAddress'] as String,
      status: map['status'] as String,
    );
  }
}

