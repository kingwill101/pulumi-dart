// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterHostPoolInfo {
  /// Machine pool ID.
  final String hpBizId;
  /// The name of the machine pool.
  final String hpName;

  /// Creates a new [GetClustersClusterHostPoolInfo].
  /// [hpBizId] Machine pool ID.
  /// [hpName] The name of the machine pool.
  GetClustersClusterHostPoolInfo({
    required this.hpBizId,
    required this.hpName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hpBizId': hpBizId,
      'hpName': hpName,
    };
  }

  factory GetClustersClusterHostPoolInfo.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterHostPoolInfo(
      hpBizId: map['hpBizId'] as String,
      hpName: map['hpName'] as String,
    );
  }
}

