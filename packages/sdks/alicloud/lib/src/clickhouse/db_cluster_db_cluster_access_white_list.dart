// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbClusterDbClusterAccessWhiteList {
  /// Field `db_cluster_ip_array_attribute` has been removed from provider.
  final pulumi.Input<String>? dbClusterIpArrayAttribute;
  /// Whitelist group name.
  final pulumi.Input<String>? dbClusterIpArrayName;
  /// The IP address list under the whitelist group.
  final pulumi.Input<String>? securityIpList;

  /// Creates a new [DbClusterDbClusterAccessWhiteList].
  /// [dbClusterIpArrayAttribute] Field `db_cluster_ip_array_attribute` has been removed from provider.
  /// [dbClusterIpArrayName] Whitelist group name.
  /// [securityIpList] The IP address list under the whitelist group.
  DbClusterDbClusterAccessWhiteList({
    this.dbClusterIpArrayAttribute,
    this.dbClusterIpArrayName,
    this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIpArrayAttribute': ?dbClusterIpArrayAttribute,
      'dbClusterIpArrayName': ?dbClusterIpArrayName,
      'securityIpList': ?securityIpList,
    };
  }

  factory DbClusterDbClusterAccessWhiteList.fromMap(Map<String, dynamic> map) {
    return DbClusterDbClusterAccessWhiteList(
      dbClusterIpArrayAttribute: map['dbClusterIpArrayAttribute'] == null ? null : (map['dbClusterIpArrayAttribute']! as String).input(),
      dbClusterIpArrayName: map['dbClusterIpArrayName'] == null ? null : (map['dbClusterIpArrayName']! as String).input(),
      securityIpList: map['securityIpList'] == null ? null : (map['securityIpList']! as String).input(),
    );
  }
}

