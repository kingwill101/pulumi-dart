// ignore_for_file: unused_element, unnecessary_cast


/// The status of the Kubernetes custom resource.
class ActiveDirectoryConnectorStatus {
  /// The time that the custom resource was last updated.
  final String? lastUpdateTime;
  /// The version of the replicaSet associated with the AD connector custom resource.
  final double? observedGeneration;
  /// The state of the AD connector custom resource.
  final String? state;

  /// Creates a new [ActiveDirectoryConnectorStatus].
  /// [lastUpdateTime] The time that the custom resource was last updated.
  /// [observedGeneration] The version of the replicaSet associated with the AD connector custom resource.
  /// [state] The state of the AD connector custom resource.
  ActiveDirectoryConnectorStatus({
    this.lastUpdateTime,
    this.observedGeneration,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateTime': ?lastUpdateTime,
      'observedGeneration': ?observedGeneration,
      'state': ?state,
    };
  }

  factory ActiveDirectoryConnectorStatus.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorStatus(
      lastUpdateTime: map['lastUpdateTime'] == null ? null : map['lastUpdateTime'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as double,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

