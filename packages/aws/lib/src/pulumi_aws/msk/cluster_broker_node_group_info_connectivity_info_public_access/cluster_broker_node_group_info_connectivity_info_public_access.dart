// ignore_for_file: unused_element, unnecessary_cast

class ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  /// Public access type. Valid values: `DISABLED`, `SERVICE_PROVIDED_EIPS`.
  final String? type;

  ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
