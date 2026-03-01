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
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? dbInstanceIpArrayAttribute,
    pulumi.Output<String>? dbInstanceIpArrayName,
    pulumi.Output<String>? modifyMode,
    pulumi.Output<List<String>>? securityIpLists,
  }) :
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      dbInstanceIpArrayAttribute = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayAttribute),
      dbInstanceIpArrayName = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayName),
      modifyMode = pulumi.Input.asOptionalInput<String>(modifyMode),
      securityIpLists = pulumi.Input.asOptionalInput<List<String>>(securityIpLists);

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
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      dbInstanceIpArrayAttribute: map['dbInstanceIpArrayAttribute'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayAttribute'] as String),
      dbInstanceIpArrayName: map['dbInstanceIpArrayName'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayName'] as String),
      modifyMode: map['modifyMode'] == null ? null : pulumi.Output.create<String>(map['modifyMode'] as String),
      securityIpLists: map['securityIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['securityIpLists'] as List).cast<String>()),
    );
  }
}

