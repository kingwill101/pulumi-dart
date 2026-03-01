// ignore_for_file: unused_element, unnecessary_cast


class DatabaseThreatDetectionPolicy {
  /// Specifies a list of alerts which should be disabled. Possible values include `Access_Anomaly`, `Sql_Injection` and `Sql_Injection_Vulnerability`.
  final List<String>? disabledAlerts;
  /// Should the account administrators be emailed when this alert is triggered? Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  final String? emailAccountAdmins;
  /// A list of email addresses which alerts should be sent to.
  final List<String>? emailAddresses;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final int? retentionDays;
  /// The State of the Policy. Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  final String? state;
  /// Specifies the identifier key of the Threat Detection audit storage account. Required if `state` is `Enabled`.
  final String? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. Required if `state` is `Enabled`.
  final String? storageEndpoint;

  /// Creates a new [DatabaseThreatDetectionPolicy].
  /// [disabledAlerts] Specifies a list of alerts which should be disabled. Possible values include `Access_Anomaly`, `Sql_Injection` and `Sql_Injection_Vulnerability`.
  /// [emailAccountAdmins] Should the account administrators be emailed when this alert is triggered? Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  /// [emailAddresses] A list of email addresses which alerts should be sent to.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [state] The State of the Policy. Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account. Required if `state` is `Enabled`.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. Required if `state` is `Enabled`.
  DatabaseThreatDetectionPolicy({
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    this.retentionDays,
    this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'retentionDays': ?retentionDays,
      'state': ?state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory DatabaseThreatDetectionPolicy.fromMap(Map<String, dynamic> map) {
    return DatabaseThreatDetectionPolicy(
      disabledAlerts: map['disabledAlerts'] == null ? null : (map['disabledAlerts'] as List).cast<String>(),
      emailAccountAdmins: map['emailAccountAdmins'] == null ? null : map['emailAccountAdmins'] as String,
      emailAddresses: map['emailAddresses'] == null ? null : (map['emailAddresses'] as List).cast<String>(),
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      state: map['state'] == null ? null : map['state'] as String,
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
    );
  }
}

