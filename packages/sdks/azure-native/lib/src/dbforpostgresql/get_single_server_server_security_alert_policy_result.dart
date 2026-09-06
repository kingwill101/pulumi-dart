// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSingleServerServerSecurityAlertPolicy.
class GetSingleServerServerSecurityAlertPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly
  final List<String>? disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  final bool? emailAccountAdmins;
  /// Specifies an array of e-mail addresses to which the alert is sent.
  final List<String>? emailAddresses;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final int? retentionDays;
  /// Specifies the state of the policy, whether it is enabled or disabled.
  final String? state;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final String? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  final String? storageEndpoint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSingleServerServerSecurityAlertPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly
  /// [emailAccountAdmins] Specifies that the alert is sent to the account administrators.
  /// [emailAddresses] Specifies an array of e-mail addresses to which the alert is sent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [state] Specifies the state of the policy, whether it is enabled or disabled.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSingleServerServerSecurityAlertPolicyResult({
    this.azureApiVersion,
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    this.id,
    this.name,
    this.retentionDays,
    this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'id': ?id,
      'name': ?name,
      'retentionDays': ?retentionDays,
      'state': ?state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
      'type': ?type,
    };
  }

  factory GetSingleServerServerSecurityAlertPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSingleServerServerSecurityAlertPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabledAlerts: (() { final guardedValue = map['disabledAlerts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      emailAccountAdmins: (() { final guardedValue = map['emailAccountAdmins']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
