// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_global_security_ip_group_global_security_ip_group_args_doc}
/// The set of arguments for GlobalSecurityIpGroup.
/// {@endtemplate}
/// {@macro pulumi_polardb_global_security_ip_group_global_security_ip_group_args_doc}
class GlobalSecurityIpGroupArgs {
  /// The name of the IP whitelist template. The name of the IP whitelist template must meet the following requirements:
  ///
  /// - The name can contain lowercase letters, digits, and underscores (\_).
  /// - The name must start with a letter and end with a letter or digit.
  /// - The name must be 2 to 120 characters in length.
  final pulumi.Input<String> globalIpGroupName;
  /// The IP address in the whitelist template.
  ///
  /// &gt; **NOTE:**   Multiple IP addresses are separated by commas (,). You can create up to 1,000 IP addresses or CIDR blocks for all IP whitelists.
  final pulumi.Input<String> globalIpList;

  /// Creates a new [GlobalSecurityIpGroupArgs].
  /// [globalIpGroupName] The name of the IP whitelist template. The name of the IP whitelist template must meet the following requirements:
  /// [globalIpList] The IP address in the whitelist template.
  const GlobalSecurityIpGroupArgs({
    required this.globalIpGroupName,
    required this.globalIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalIpGroupName': globalIpGroupName,
      'globalIpList': globalIpList,
    };
  }

  factory GlobalSecurityIpGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSecurityIpGroupArgs(
      globalIpGroupName: pulumi.Input.fromValue(map['globalIpGroupName'] as String),
      globalIpList: pulumi.Input.fromValue(map['globalIpList'] as String),
    );
  }
}

