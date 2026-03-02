// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_instance_net_info_port_list.dart';

class DbInstanceInstanceNetInfo {
  /// The connection string of the instance.
  final pulumi.Input<String>? connectionString;
  /// The IP address of the instance.
  final pulumi.Input<String>? dbIp;
  /// The network type of the instance.
  final pulumi.Input<String>? netType;
  /// A list for port provides SelectDB service.
  final pulumi.Input<List<DbInstanceInstanceNetInfoPortList>>? portLists;
  /// The VPC ID.
  final pulumi.Input<String>? vpcInstanceId;
  /// The ID of vswitch for DBInstance.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [DbInstanceInstanceNetInfo].
  /// [connectionString] The connection string of the instance.
  /// [dbIp] The IP address of the instance.
  /// [netType] The network type of the instance.
  /// [portLists] A list for port provides SelectDB service.
  /// [vpcInstanceId] The VPC ID.
  /// [vswitchId] The ID of vswitch for DBInstance.
  DbInstanceInstanceNetInfo({
    this.connectionString,
    this.dbIp,
    this.netType,
    this.portLists,
    this.vpcInstanceId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'dbIp': ?dbIp,
      'netType': ?netType,
      'portLists': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceInstanceNetInfoPortList>, List<Map<String, dynamic>>>(portLists, (value) => pulumi.Input.encodeList<DbInstanceInstanceNetInfoPortList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcInstanceId': ?vpcInstanceId,
      'vswitchId': ?vswitchId,
    };
  }

  factory DbInstanceInstanceNetInfo.fromMap(Map<String, dynamic> map) {
    return DbInstanceInstanceNetInfo(
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      dbIp: map['dbIp'] == null ? null : (map['dbIp']! as String).input(),
      netType: map['netType'] == null ? null : (map['netType']! as String).input(),
      portLists: map['portLists'] == null ? null : (pulumi.Input.decodeList<DbInstanceInstanceNetInfoPortList>(map['portLists']!, (value) => DbInstanceInstanceNetInfoPortList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcInstanceId: map['vpcInstanceId'] == null ? null : (map['vpcInstanceId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

