// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DbInstanceIpArray resources.
class DbInstanceIpArrayState {
  /// The instance ID.
  ///
  /// > **NOTE:**  You can call the [DescribeDBInstances](https://www.alibabacloud.com/help/en/doc-detail/86911.html) operation to query details about all AnalyticDB for PostgreSQL instances within a region, including instance IDs.
  final pulumi.Input<String>? dbInstanceId;
  /// The default is empty. To distinguish between different attribute values, the console does not display groups with the 'hidden' attribute.
  final pulumi.Input<String>? dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. If you do not specify this parameter, the default whitelist is queried.
  ///
  /// > **NOTE:**   Each instance supports up to 50 IP address whitelists.
  final pulumi.Input<String>? dbInstanceIpArrayName;
  /// The method of modification. Valid values:
  ///
  /// - `Cover`: overwrites the whitelist.
  /// - `Append`: appends data to the whitelist.
  /// - `Delete`: deletes the whitelist.
  final pulumi.Input<String>? modifyMode;
  /// The IP address whitelist contains a maximum of 1000 IP addresses separated by commas in the following three formats:
  /// - 0.0.0.0/0
  /// - 10.23.12.24(IP)
  /// - 10.23.12.24/24(CIDR mode, Classless Inter-Domain Routing, '/24' indicates the length of the prefix in the address, and the range is '[1,32]')
  final pulumi.Input<List<String>>? securityIpLists;

  /// Creates a new [DbInstanceIpArrayState].
  /// [dbInstanceId] The instance ID.
  /// [dbInstanceIpArrayAttribute] The default is empty. To distinguish between different attribute values, the console does not display groups with the 'hidden' attribute.
  /// [dbInstanceIpArrayName] The name of the IP address whitelist. If you do not specify this parameter, the default whitelist is queried.
  /// [modifyMode] The method of modification. Valid values:
  /// [securityIpLists] The IP address whitelist contains a maximum of 1000 IP addresses separated by commas in the following three formats:
  DbInstanceIpArrayState({
    this.dbInstanceId,
    this.dbInstanceIpArrayAttribute,
    this.dbInstanceIpArrayName,
    this.modifyMode,
    this.securityIpLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'dbInstanceIpArrayAttribute': ?dbInstanceIpArrayAttribute,
      'dbInstanceIpArrayName': ?dbInstanceIpArrayName,
      'modifyMode': ?modifyMode,
      'securityIpLists': ?securityIpLists,
    };
  }

  factory DbInstanceIpArrayState.fromMap(Map<String, dynamic> map) {
    return DbInstanceIpArrayState(
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      dbInstanceIpArrayAttribute: map['dbInstanceIpArrayAttribute'] == null ? null : (map['dbInstanceIpArrayAttribute'] as String).input(),
      dbInstanceIpArrayName: map['dbInstanceIpArrayName'] == null ? null : (map['dbInstanceIpArrayName'] as String).input(),
      modifyMode: map['modifyMode'] == null ? null : (map['modifyMode'] as String).input(),
      securityIpLists: map['securityIpLists'] == null ? null : ((map['securityIpLists'] as List).cast<String>()).input(),
    );
  }
}

