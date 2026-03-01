// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceNetworkInitiatorIqn {
  /// Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  final String? name;

  /// Creates a new [DomainDevicesDiskSourceNetworkInitiatorIqn].
  /// [name] Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  DomainDevicesDiskSourceNetworkInitiatorIqn({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DomainDevicesDiskSourceNetworkInitiatorIqn.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkInitiatorIqn(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

