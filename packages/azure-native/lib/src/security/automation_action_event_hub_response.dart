// ignore_for_file: unused_element, unnecessary_cast


/// The target Event Hub to which event data will be exported. To learn more about Microsoft Defender for Cloud continuous export capabilities, visit https://aka.ms/ASCExportLearnMore
class AutomationActionEventHubResponse {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'EventHub'.
  final String actionType;
  /// The target Event Hub connection string (it will not be included in any response).
  final String? connectionString;
  /// The target Event Hub Azure Resource ID.
  final String? eventHubResourceId;
  /// Indicates whether the trusted service is enabled or not.
  final bool? isTrustedServiceEnabled;
  /// The target Event Hub SAS policy name.
  final String sasPolicyName;

  /// Creates a new [AutomationActionEventHubResponse].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [connectionString] The target Event Hub connection string (it will not be included in any response).
  /// [eventHubResourceId] The target Event Hub Azure Resource ID.
  /// [isTrustedServiceEnabled] Indicates whether the trusted service is enabled or not.
  /// [sasPolicyName] The target Event Hub SAS policy name.
  AutomationActionEventHubResponse({
    required this.actionType,
    this.connectionString,
    this.eventHubResourceId,
    this.isTrustedServiceEnabled,
    required this.sasPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'connectionString': ?connectionString,
      'eventHubResourceId': ?eventHubResourceId,
      'isTrustedServiceEnabled': ?isTrustedServiceEnabled,
      'sasPolicyName': sasPolicyName,
    };
  }

  factory AutomationActionEventHubResponse.fromMap(Map<String, dynamic> map) {
    return AutomationActionEventHubResponse(
      actionType: map['actionType'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      eventHubResourceId: map['eventHubResourceId'] == null ? null : map['eventHubResourceId'] as String,
      isTrustedServiceEnabled: map['isTrustedServiceEnabled'] == null ? null : map['isTrustedServiceEnabled'] as bool,
      sasPolicyName: map['sasPolicyName'] as String,
    );
  }
}

