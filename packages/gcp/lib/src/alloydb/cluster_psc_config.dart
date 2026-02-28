// ignore_for_file: unused_element, unnecessary_cast

class ClusterPscConfig {
  /// Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final bool? pscEnabled;

  /// (Output)
  /// The project number that needs to be allowlisted on the network attachment to enable outbound connectivity, if the network attachment is configured to ACCEPT_MANUAL connections.
  /// In case the network attachment is configured to ACCEPT_AUTOMATIC, this project number does not need to be allowlisted explicitly.
  final int? serviceOwnedProjectNumber;

  /// Creates a new [ClusterPscConfig].
  /// [pscEnabled] Create an instance that allows connections from Private Service Connect endpoints to the instance.
  /// [serviceOwnedProjectNumber] (Output)
  ClusterPscConfig({
    this.pscEnabled,
    this.serviceOwnedProjectNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pscEnabledValue = pscEnabled;
    if (pscEnabledValue != null) {
      map['pscEnabled'] = pscEnabledValue;
    }
    final serviceOwnedProjectNumberValue = serviceOwnedProjectNumber;
    if (serviceOwnedProjectNumberValue != null) {
      map['serviceOwnedProjectNumber'] = serviceOwnedProjectNumberValue;
    }
    return map;
  }

  factory ClusterPscConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPscConfig(
      pscEnabled: map['pscEnabled'] == null ? null : map['pscEnabled'] as bool,
      serviceOwnedProjectNumber: map['serviceOwnedProjectNumber'] == null
          ? null
          : map['serviceOwnedProjectNumber'] as int,
    );
  }
}
