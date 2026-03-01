// ignore_for_file: unused_element, unnecessary_cast

import 'governance_rule_email_notification_response.dart';
import 'governance_rule_metadata_response.dart';
import 'governance_rule_owner_source_response.dart';

/// Result data returned by getGovernanceRule.
class GetGovernanceRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the governance rule
  final String? description;
  /// Display name of the governance rule
  final String displayName;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  final List<String>? excludedScopes;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  final GovernanceRuleEmailNotificationResponse? governanceEmailNotification;
  /// Resource Id
  final String id;
  /// Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  final bool? includeMemberScopes;
  /// Defines whether the rule is active/inactive
  final bool? isDisabled;
  /// Defines whether there is a grace period on the governance rule
  final bool? isGracePeriod;
  /// The governance rule metadata
  final GovernanceRuleMetadataResponse? metadata;
  /// Resource name
  final String name;
  /// The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  final GovernanceRuleOwnerSourceResponse ownerSource;
  /// Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  final String? remediationTimeframe;
  /// The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  final int rulePriority;
  /// The rule type of the governance rule, defines the source of the rule e.g. Integrated
  final String ruleType;
  /// The governance rule source, what the rule affects, e.g. Assessments
  final String sourceResourceType;
  /// The tenantId (GUID)
  final String tenantId;
  /// Resource type
  final String type;

  /// Creates a new [GetGovernanceRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the governance rule
  /// [displayName] Display name of the governance rule
  /// [excludedScopes] Excluded scopes, filter out the descendants of the scope (on management scopes)
  /// [governanceEmailNotification] The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  /// [id] Resource Id
  /// [includeMemberScopes] Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  /// [isDisabled] Defines whether the rule is active/inactive
  /// [isGracePeriod] Defines whether there is a grace period on the governance rule
  /// [metadata] The governance rule metadata
  /// [name] Resource name
  /// [ownerSource] The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  /// [remediationTimeframe] Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  /// [rulePriority] The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  /// [ruleType] The rule type of the governance rule, defines the source of the rule e.g. Integrated
  /// [sourceResourceType] The governance rule source, what the rule affects, e.g. Assessments
  /// [tenantId] The tenantId (GUID)
  /// [type] Resource type
  GetGovernanceRuleResult({
    required this.azureApiVersion,
    this.description,
    required this.displayName,
    this.excludedScopes,
    this.governanceEmailNotification,
    required this.id,
    this.includeMemberScopes,
    this.isDisabled,
    this.isGracePeriod,
    this.metadata,
    required this.name,
    required this.ownerSource,
    this.remediationTimeframe,
    required this.rulePriority,
    required this.ruleType,
    required this.sourceResourceType,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': displayName,
      'excludedScopes': ?excludedScopes,
      'governanceEmailNotification': ?governanceEmailNotification == null ? null : governanceEmailNotification!.toMap(),
      'id': id,
      'includeMemberScopes': ?includeMemberScopes,
      'isDisabled': ?isDisabled,
      'isGracePeriod': ?isGracePeriod,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'name': name,
      'ownerSource': ownerSource.toMap(),
      'remediationTimeframe': ?remediationTimeframe,
      'rulePriority': rulePriority,
      'ruleType': ruleType,
      'sourceResourceType': sourceResourceType,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetGovernanceRuleResult.fromMap(Map<String, dynamic> map) {
    return GetGovernanceRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      excludedScopes: map['excludedScopes'] == null ? null : (map['excludedScopes'] as List).cast<String>(),
      governanceEmailNotification: map['governanceEmailNotification'] == null ? null : GovernanceRuleEmailNotificationResponse.fromMap((map['governanceEmailNotification'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      includeMemberScopes: map['includeMemberScopes'] == null ? null : map['includeMemberScopes'] as bool,
      isDisabled: map['isDisabled'] == null ? null : map['isDisabled'] as bool,
      isGracePeriod: map['isGracePeriod'] == null ? null : map['isGracePeriod'] as bool,
      metadata: map['metadata'] == null ? null : GovernanceRuleMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ownerSource: GovernanceRuleOwnerSourceResponse.fromMap((map['ownerSource'] as Map).cast<String, dynamic>()),
      remediationTimeframe: map['remediationTimeframe'] == null ? null : map['remediationTimeframe'] as String,
      rulePriority: map['rulePriority'] as int,
      ruleType: map['ruleType'] as String,
      sourceResourceType: map['sourceResourceType'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

