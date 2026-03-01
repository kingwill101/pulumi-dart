// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_database_threat_detection_policy_args_doc}
/// The set of arguments for DatabaseThreatDetectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_database_threat_detection_policy_args_doc}
class DatabaseThreatDetectionPolicyArgs {
  /// The name of the database for which database Threat Detection policy is defined.
  final pulumi.Input<String> databaseName;
  /// Specifies the semicolon-separated list of alerts that are disabled, or empty string to disable no alerts. Possible values: Sql_Injection; Sql_Injection_Vulnerability; Access_Anomaly; Data_Exfiltration; Unsafe_Action.
  final pulumi.Input<String>? disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  final pulumi.Input<String>? emailAccountAdmins;
  /// Specifies the semicolon-separated list of e-mail addresses to which the alert is sent.
  final pulumi.Input<String>? emailAddresses;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final pulumi.Input<int>? retentionDays;
  /// The name of the security alert policy.
  final pulumi.Input<String>? securityAlertPolicyName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
  final pulumi.Input<String> state;
  /// Specifies the identifier key of the Threat Detection audit storage account. If state is Enabled, storageAccountAccessKey is required.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. If state is Enabled, storageEndpoint is required.
  final pulumi.Input<String>? storageEndpoint;
  /// Specifies whether to use the default server policy.
  final pulumi.Input<String>? useServerDefault;

  /// Creates a new [DatabaseThreatDetectionPolicyArgs].
  /// [databaseName] The name of the database for which database Threat Detection policy is defined.
  /// [disabledAlerts] Specifies the semicolon-separated list of alerts that are disabled, or empty string to disable no alerts. Possible values: Sql_Injection; Sql_Injection_Vulnerability; Access_Anomaly; Data_Exfiltration; Unsafe_Action.
  /// [emailAccountAdmins] Specifies that the alert is sent to the account administrators.
  /// [emailAddresses] Specifies the semicolon-separated list of e-mail addresses to which the alert is sent.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [securityAlertPolicyName] The name of the security alert policy.
  /// [serverName] The name of the server.
  /// [state] Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account. If state is Enabled, storageAccountAccessKey is required.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. If state is Enabled, storageEndpoint is required.
  /// [useServerDefault] Specifies whether to use the default server policy.
  DatabaseThreatDetectionPolicyArgs({
    required String databaseName,
    String? disabledAlerts,
    String? emailAccountAdmins,
    String? emailAddresses,
    String? location,
    required String resourceGroupName,
    int? retentionDays,
    String? securityAlertPolicyName,
    required String serverName,
    required String state,
    String? storageAccountAccessKey,
    String? storageEndpoint,
    String? useServerDefault,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      disabledAlerts = pulumi.Input.asOptionalInput<String>(disabledAlerts),
      emailAccountAdmins = pulumi.Input.asOptionalInput<String>(emailAccountAdmins),
      emailAddresses = pulumi.Input.asOptionalInput<String>(emailAddresses),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      securityAlertPolicyName = pulumi.Input.asOptionalInput<String>(securityAlertPolicyName),
      serverName = pulumi.Input.asInput<String>(serverName),
      state = pulumi.Input.asInput<String>(state),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint),
      useServerDefault = pulumi.Input.asOptionalInput<String>(useServerDefault);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'retentionDays': ?retentionDays,
      'securityAlertPolicyName': ?securityAlertPolicyName,
      'serverName': serverName,
      'state': state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
      'useServerDefault': ?useServerDefault,
    };
  }

  factory DatabaseThreatDetectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseThreatDetectionPolicyArgs(
      databaseName: map['databaseName'] as String,
      disabledAlerts: map['disabledAlerts'] == null ? null : map['disabledAlerts'] as String,
      emailAccountAdmins: map['emailAccountAdmins'] == null ? null : map['emailAccountAdmins'] as String,
      emailAddresses: map['emailAddresses'] == null ? null : map['emailAddresses'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      securityAlertPolicyName: map['securityAlertPolicyName'] == null ? null : map['securityAlertPolicyName'] as String,
      serverName: map['serverName'] as String,
      state: map['state'] as String,
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
      useServerDefault: map['useServerDefault'] == null ? null : map['useServerDefault'] as String,
    );
  }
}

