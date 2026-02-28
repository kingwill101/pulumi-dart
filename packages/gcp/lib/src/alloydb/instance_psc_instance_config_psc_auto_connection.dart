// ignore_for_file: unused_element, unnecessary_cast

class InstancePscInstanceConfigPscAutoConnection {
  /// The consumer network for the PSC service automation, example:
  /// "projects/vpc-host-project/global/networks/default".
  /// The consumer network might be hosted a different project than the
  /// consumer project. The API expects the consumer project specified to be
  /// the project ID (and not the project number)
  final String? consumerNetwork;

  /// (Output)
  /// The status of the service connection policy.
  final String? consumerNetworkStatus;

  /// The consumer project to which the PSC service automation endpoint will
  /// be created. The API expects the consumer project to be the project ID(
  /// and not the project number).
  final String? consumerProject;

  /// (Output)
  /// The IP address of the PSC service automation endpoint.
  final String? ipAddress;

  /// (Output)
  /// The status of the PSC service automation connection.
  final String? status;

  /// Creates a new [InstancePscInstanceConfigPscAutoConnection].
  /// [consumerNetwork] The consumer network for the PSC service automation, example:
  /// [consumerNetworkStatus] (Output)
  /// [consumerProject] The consumer project to which the PSC service automation endpoint will
  /// [ipAddress] (Output)
  /// [status] (Output)
  InstancePscInstanceConfigPscAutoConnection({
    this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerProject,
    this.ipAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerNetworkValue = consumerNetwork;
    if (consumerNetworkValue != null) {
      map['consumerNetwork'] = consumerNetworkValue;
    }
    final consumerNetworkStatusValue = consumerNetworkStatus;
    if (consumerNetworkStatusValue != null) {
      map['consumerNetworkStatus'] = consumerNetworkStatusValue;
    }
    final consumerProjectValue = consumerProject;
    if (consumerProjectValue != null) {
      map['consumerProject'] = consumerProjectValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory InstancePscInstanceConfigPscAutoConnection.fromMap(
      Map<String, dynamic> map) {
    return InstancePscInstanceConfigPscAutoConnection(
      consumerNetwork: map['consumerNetwork'] == null
          ? null
          : map['consumerNetwork'] as String,
      consumerNetworkStatus: map['consumerNetworkStatus'] == null
          ? null
          : map['consumerNetworkStatus'] as String,
      consumerProject: map['consumerProject'] == null
          ? null
          : map['consumerProject'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
