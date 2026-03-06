// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouseenterprisedbcluster_security_ip_security_ip_args_doc}
/// The set of arguments for SecurityIp.
/// {@endtemplate}
/// {@macro pulumi_clickhouseenterprisedbcluster_security_ip_security_ip_args_doc}
class SecurityIpArgs {
  /// The cluster ID.
  final pulumi.Input<String> dbInstanceId;
  /// The whitelist name.
  final pulumi.Input<String> groupName;
  /// The IP address list under the whitelist group.
  final pulumi.Input<String> securityIpList;

  /// Creates a new [SecurityIpArgs].
  /// [dbInstanceId] The cluster ID.
  /// [groupName] The whitelist name.
  /// [securityIpList] The IP address list under the whitelist group.
  const SecurityIpArgs({
    required this.dbInstanceId,
    required this.groupName,
    required this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'groupName': groupName,
      'securityIpList': securityIpList,
    };
  }

  factory SecurityIpArgs.fromMap(Map<String, dynamic> map) {
    return SecurityIpArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      securityIpList: pulumi.Input.fromValue(map['securityIpList'] as String),
    );
  }
}

