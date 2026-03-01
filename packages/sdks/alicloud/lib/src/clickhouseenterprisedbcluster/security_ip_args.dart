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
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> securityIpList,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      groupName = pulumi.Input.asInput<String>(groupName),
      securityIpList = pulumi.Input.asInput<String>(securityIpList);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'groupName': groupName,
      'securityIpList': securityIpList,
    };
  }

  factory SecurityIpArgs.fromMap(Map<String, dynamic> map) {
    return SecurityIpArgs(
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      securityIpList: pulumi.Output.create<String>(map['securityIpList'] as String),
    );
  }
}

