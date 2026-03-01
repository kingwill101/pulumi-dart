// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleNrtIncidentGrouping {
  /// A list of alert details to group by, only when the `entity_matching_method` is `Selected`. Possible values are `DisplayName` and `Severity`.
  final List<String>? byAlertDetails;
  /// A list of custom details keys to group by, only when the `entity_matching_method` is `Selected`. Only keys defined in the `custom_details` may be used.
  final List<String>? byCustomDetails;
  /// A list of entity types to group by, only when the `entity_matching_method` is `Selected`. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  final List<String>? byEntities;
  /// Enable grouping incidents created from alerts triggered by this Sentinel NRT Alert Rule. Defaults to `true`.
  final bool? enabled;
  /// The method used to group incidents. Possible values are `AnyAlert`, `Selected` and `AllEntities`. Defaults to `AnyAlert`.
  final String? entityMatchingMethod;
  /// Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to `PT5M`.
  final String? lookbackDuration;
  /// Whether to re-open closed matching incidents? Defaults to `false`.
  final bool? reopenClosedIncidents;

  /// Creates a new [AlertRuleNrtIncidentGrouping].
  /// [byAlertDetails] A list of alert details to group by, only when the `entity_matching_method` is `Selected`. Possible values are `DisplayName` and `Severity`.
  /// [byCustomDetails] A list of custom details keys to group by, only when the `entity_matching_method` is `Selected`. Only keys defined in the `custom_details` may be used.
  /// [byEntities] A list of entity types to group by, only when the `entity_matching_method` is `Selected`. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  /// [enabled] Enable grouping incidents created from alerts triggered by this Sentinel NRT Alert Rule. Defaults to `true`.
  /// [entityMatchingMethod] The method used to group incidents. Possible values are `AnyAlert`, `Selected` and `AllEntities`. Defaults to `AnyAlert`.
  /// [lookbackDuration] Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to `PT5M`.
  /// [reopenClosedIncidents] Whether to re-open closed matching incidents? Defaults to `false`.
  AlertRuleNrtIncidentGrouping({
    this.byAlertDetails,
    this.byCustomDetails,
    this.byEntities,
    this.enabled,
    this.entityMatchingMethod,
    this.lookbackDuration,
    this.reopenClosedIncidents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byAlertDetails': ?byAlertDetails,
      'byCustomDetails': ?byCustomDetails,
      'byEntities': ?byEntities,
      'enabled': ?enabled,
      'entityMatchingMethod': ?entityMatchingMethod,
      'lookbackDuration': ?lookbackDuration,
      'reopenClosedIncidents': ?reopenClosedIncidents,
    };
  }

  factory AlertRuleNrtIncidentGrouping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtIncidentGrouping(
      byAlertDetails: map['byAlertDetails'] == null ? null : (map['byAlertDetails'] as List).cast<String>(),
      byCustomDetails: map['byCustomDetails'] == null ? null : (map['byCustomDetails'] as List).cast<String>(),
      byEntities: map['byEntities'] == null ? null : (map['byEntities'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      entityMatchingMethod: map['entityMatchingMethod'] == null ? null : map['entityMatchingMethod'] as String,
      lookbackDuration: map['lookbackDuration'] == null ? null : map['lookbackDuration'] as String,
      reopenClosedIncidents: map['reopenClosedIncidents'] == null ? null : map['reopenClosedIncidents'] as bool,
    );
  }
}

