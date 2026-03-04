// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterHostPoolInfo {
  /// Machine pool ID.
  final pulumi.Input<String> hpBizId;

  /// The name of the machine pool.
  final pulumi.Input<String> hpName;

  /// Creates a new [GetClustersClusterHostPoolInfo].
  /// [hpBizId] Machine pool ID.
  /// [hpName] The name of the machine pool.
  GetClustersClusterHostPoolInfo({required this.hpBizId, required this.hpName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hpBizId': hpBizId, 'hpName': hpName};
  }

  factory GetClustersClusterHostPoolInfo.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterHostPoolInfo(
      hpBizId: pulumi.Input.fromValue(map['hpBizId'] as String),
      hpName: pulumi.Input.fromValue(map['hpName'] as String),
    );
  }
}
