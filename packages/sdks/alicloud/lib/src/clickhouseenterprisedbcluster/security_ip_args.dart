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
  SecurityIpArgs({
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
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      securityIpList: (map['securityIpList'] as String).input(),
    );
  }
}

