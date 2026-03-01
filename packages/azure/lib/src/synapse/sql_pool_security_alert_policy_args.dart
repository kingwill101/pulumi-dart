// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_security_alert_policy_sql_pool_security_alert_policy_args_doc}
/// The set of arguments for SqlPoolSecurityAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_security_alert_policy_sql_pool_security_alert_policy_args_doc}
class SqlPoolSecurityAlertPolicyArgs {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  final pulumi.Input<bool>? emailAccountAdminsEnabled;
  /// Specifies an array of email addresses to which the alert is sent.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are `Disabled`, `Enabled` and `New`.
  final pulumi.Input<String> policyState;
  /// Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  final pulumi.Input<int>? retentionDays;
  /// Specifies the ID of the Synapse SQL Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlPoolId;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [SqlPoolSecurityAlertPolicyArgs].
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  /// [emailAccountAdminsEnabled] Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  /// [emailAddresses] Specifies an array of email addresses to which the alert is sent.
  /// [policyState] Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are `Disabled`, `Enabled` and `New`.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  /// [sqlPoolId] Specifies the ID of the Synapse SQL Pool. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  SqlPoolSecurityAlertPolicyArgs({
    List<String>? disabledAlerts,
    bool? emailAccountAdminsEnabled,
    List<String>? emailAddresses,
    required String policyState,
    int? retentionDays,
    required String sqlPoolId,
    String? storageAccountAccessKey,
    String? storageEndpoint,
  }) :
      disabledAlerts = pulumi.Input.asOptionalInput<List<String>>(disabledAlerts),
      emailAccountAdminsEnabled = pulumi.Input.asOptionalInput<bool>(emailAccountAdminsEnabled),
      emailAddresses = pulumi.Input.asOptionalInput<List<String>>(emailAddresses),
      policyState = pulumi.Input.asInput<String>(policyState),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      sqlPoolId = pulumi.Input.asInput<String>(sqlPoolId),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdminsEnabled': ?emailAccountAdminsEnabled,
      'emailAddresses': ?emailAddresses,
      'policyState': policyState,
      'retentionDays': ?retentionDays,
      'sqlPoolId': sqlPoolId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory SqlPoolSecurityAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolSecurityAlertPolicyArgs(
      disabledAlerts: map['disabledAlerts'] == null ? null : (map['disabledAlerts'] as List).cast<String>(),
      emailAccountAdminsEnabled: map['emailAccountAdminsEnabled'] == null ? null : map['emailAccountAdminsEnabled'] as bool,
      emailAddresses: map['emailAddresses'] == null ? null : (map['emailAddresses'] as List).cast<String>(),
      policyState: map['policyState'] as String,
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      sqlPoolId: map['sqlPoolId'] as String,
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
    );
  }
}

