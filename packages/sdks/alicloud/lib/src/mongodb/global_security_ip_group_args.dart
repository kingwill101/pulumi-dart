// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_global_security_ip_group_global_security_ip_group_args_doc}
/// The set of arguments for GlobalSecurityIpGroup.
/// {@endtemplate}
/// {@macro pulumi_mongodb_global_security_ip_group_global_security_ip_group_args_doc}
class GlobalSecurityIpGroupArgs {
  /// The name of the IP whitelist template.
  final pulumi.Input<String> globalIgName;
  /// The IP address in the whitelist template.
  ///
  /// &gt; **NOTE:** Separate multiple IP addresses with commas (,). You can create up to 1000 IP addresses or CIDR blocks for all IP address whitelists.
  final pulumi.Input<String> globalSecurityIpList;

  /// Creates a new [GlobalSecurityIpGroupArgs].
  /// [globalIgName] The name of the IP whitelist template.
  /// [globalSecurityIpList] The IP address in the whitelist template.
  GlobalSecurityIpGroupArgs({
    required this.globalIgName,
    required this.globalSecurityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalIgName': globalIgName,
      'globalSecurityIpList': globalSecurityIpList,
    };
  }

  factory GlobalSecurityIpGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSecurityIpGroupArgs(
      globalIgName: pulumi.Input.fromValue(map['globalIgName'] as String),
      globalSecurityIpList: pulumi.Input.fromValue(map['globalSecurityIpList'] as String),
    );
  }
}

