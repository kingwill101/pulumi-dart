// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_single_server_server_security_alert_policy_args_doc}
/// Arguments for getSingleServerServerSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_single_server_server_security_alert_policy_args_doc}
class GetSingleServerServerSecurityAlertPolicyArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the security alert policy.
  final pulumi.Input<String> securityAlertPolicyName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetSingleServerServerSecurityAlertPolicyArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityAlertPolicyName] The name of the security alert policy.
  /// [serverName] The name of the server.
  GetSingleServerServerSecurityAlertPolicyArgs({
    required this.resourceGroupName,
    required this.securityAlertPolicyName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityAlertPolicyName': securityAlertPolicyName,
      'serverName': serverName,
    };
  }

  factory GetSingleServerServerSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSingleServerServerSecurityAlertPolicyArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityAlertPolicyName: pulumi.Input.fromValue(map['securityAlertPolicyName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

