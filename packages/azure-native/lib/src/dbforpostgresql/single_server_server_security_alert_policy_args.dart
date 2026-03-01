// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_security_alert_policy_state.dart';

/// {@template pulumi_dbforpostgresql_single_server_server_security_alert_policy_args_doc}
/// The set of arguments for SingleServerServerSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_single_server_server_security_alert_policy_args_doc}
class SingleServerServerSecurityAlertPolicyArgs {
  /// Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  final pulumi.Input<bool>? emailAccountAdmins;
  /// Specifies an array of e-mail addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final pulumi.Input<int>? retentionDays;
  /// The name of the threat detection policy.
  final pulumi.Input<String>? securityAlertPolicyName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Specifies the state of the policy, whether it is enabled or disabled.
  final pulumi.Input<ServerSecurityAlertPolicyState> state;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [SingleServerServerSecurityAlertPolicyArgs].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly
  /// [emailAccountAdmins] Specifies that the alert is sent to the account administrators.
  /// [emailAddresses] Specifies an array of e-mail addresses to which the alert is sent.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [securityAlertPolicyName] The name of the threat detection policy.
  /// [serverName] The name of the server.
  /// [state] Specifies the state of the policy, whether it is enabled or disabled.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  SingleServerServerSecurityAlertPolicyArgs({
    List<String>? disabledAlerts,
    bool? emailAccountAdmins,
    List<String>? emailAddresses,
    required String resourceGroupName,
    int? retentionDays,
    String? securityAlertPolicyName,
    required String serverName,
    required ServerSecurityAlertPolicyState state,
    String? storageAccountAccessKey,
    String? storageEndpoint,
  }) :
      disabledAlerts = pulumi.Input.asOptionalInput<List<String>>(disabledAlerts),
      emailAccountAdmins = pulumi.Input.asOptionalInput<bool>(emailAccountAdmins),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      securityAlertPolicyName = pulumi.Input.asOptionalInput<String>(securityAlertPolicyName),
      serverName = pulumi.Input.asInput<String>(serverName),
      state = pulumi.Input.asInput<ServerSecurityAlertPolicyState>(state),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'resourceGroupName': resourceGroupName,
      'retentionDays': ?retentionDays,
      'securityAlertPolicyName': ?securityAlertPolicyName,
      'serverName': serverName,
      'state': pulumi.Input.mapInputValue<ServerSecurityAlertPolicyState, String>(state, (value) => value.value),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory SingleServerServerSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerServerSecurityAlertPolicyArgs(
      disabledAlerts: map['disabledAlerts'] == null ? null : (map['disabledAlerts'] as List).cast<String>(),
      emailAccountAdmins: map['emailAccountAdmins'] == null ? null : map['emailAccountAdmins'] as bool,
      emailAddresses: map['emailAddresses'] == null ? null : (map['emailAddresses'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      securityAlertPolicyName: map['securityAlertPolicyName'] == null ? null : map['securityAlertPolicyName'] as String,
      serverName: map['serverName'] as String,
      state: ServerSecurityAlertPolicyState.fromValue(map['state'] as String),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
    );
  }
}

