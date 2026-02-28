// ignore_for_file: unused_element, unnecessary_cast

class GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  final String type;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess].
  /// [type] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(
      Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess(
      type: map['type'] as String,
    );
  }
}
