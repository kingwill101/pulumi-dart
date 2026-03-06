// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbClustersClusterDbClusterAccessWhiteList {
  /// Field `db_cluster_ip_array_attribute` has been removed from provider.
  final pulumi.Input<String> dbClusterIpArrayAttribute;
  /// Whitelist group name.
  final pulumi.Input<String> dbClusterIpArrayName;
  /// The IP address list under the whitelist group.
  final pulumi.Input<String> securityIpList;

  /// Creates a new [GetDbClustersClusterDbClusterAccessWhiteList].
  /// [dbClusterIpArrayAttribute] Field `db_cluster_ip_array_attribute` has been removed from provider.
  /// [dbClusterIpArrayName] Whitelist group name.
  /// [securityIpList] The IP address list under the whitelist group.
  const GetDbClustersClusterDbClusterAccessWhiteList({
    required this.dbClusterIpArrayAttribute,
    required this.dbClusterIpArrayName,
    required this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIpArrayAttribute': dbClusterIpArrayAttribute,
      'dbClusterIpArrayName': dbClusterIpArrayName,
      'securityIpList': securityIpList,
    };
  }

  factory GetDbClustersClusterDbClusterAccessWhiteList.fromMap(Map<String, dynamic> map) {
    return GetDbClustersClusterDbClusterAccessWhiteList(
      dbClusterIpArrayAttribute: pulumi.Input.fromValue(map['dbClusterIpArrayAttribute'] as String),
      dbClusterIpArrayName: pulumi.Input.fromValue(map['dbClusterIpArrayName'] as String),
      securityIpList: pulumi.Input.fromValue(map['securityIpList'] as String),
    );
  }
}

