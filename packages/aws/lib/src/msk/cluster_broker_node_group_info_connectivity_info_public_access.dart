// ignore_for_file: unused_element, unnecessary_cast

class ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  /// Public access type. Valid values: `DISABLED`, `SERVICE_PROVIDED_EIPS`.
  final String? type;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess].
  /// [type] Public access type. Valid values: `DISABLED`, `SERVICE_PROVIDED_EIPS`.
  ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
