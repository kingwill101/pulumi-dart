// ignore_for_file: unused_element, unnecessary_cast


/// The target Event Hub to which event data will be exported. To learn more about Microsoft Defender for Cloud continuous export capabilities, visit https://aka.ms/ASCExportLearnMore
class AutomationActionEventHub {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'EventHub'.
  final String actionType;
  /// The target Event Hub connection string (it will not be included in any response).
  final String? connectionString;
  /// The target Event Hub Azure Resource ID.
  final String? eventHubResourceId;
  /// Indicates whether the trusted service is enabled or not.
  final bool? isTrustedServiceEnabled;

  /// Creates a new [AutomationActionEventHub].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [connectionString] The target Event Hub connection string (it will not be included in any response).
  /// [eventHubResourceId] The target Event Hub Azure Resource ID.
  /// [isTrustedServiceEnabled] Indicates whether the trusted service is enabled or not.
  AutomationActionEventHub({
    required this.actionType,
    this.connectionString,
    this.eventHubResourceId,
    this.isTrustedServiceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'connectionString': ?connectionString,
      'eventHubResourceId': ?eventHubResourceId,
      'isTrustedServiceEnabled': ?isTrustedServiceEnabled,
    };
  }

  factory AutomationActionEventHub.fromMap(Map<String, dynamic> map) {
    return AutomationActionEventHub(
      actionType: map['actionType'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      eventHubResourceId: map['eventHubResourceId'] == null ? null : map['eventHubResourceId'] as String,
      isTrustedServiceEnabled: map['isTrustedServiceEnabled'] == null ? null : map['isTrustedServiceEnabled'] as bool,
    );
  }
}

