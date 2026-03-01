// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn {
  /// Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  final String? name;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn].
  /// [name] Sets a name attribute for the iSCSI initiator's IQN for identification purposes.
  DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkInitiatorIqn(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

