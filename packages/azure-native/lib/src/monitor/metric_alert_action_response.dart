// ignore_for_file: unused_element, unnecessary_cast


/// An alert action.
class MetricAlertActionResponse {
  /// the id of the action group to use.
  final String? actionGroupId;
  /// This field allows specifying custom properties, which would be appended to the alert payload sent as input to the webhook.
  final Map<String, String>? webHookProperties;

  /// Creates a new [MetricAlertActionResponse].
  /// [actionGroupId] the id of the action group to use.
  /// [webHookProperties] This field allows specifying custom properties, which would be appended to the alert payload sent as input to the webhook.
  MetricAlertActionResponse({
    this.actionGroupId,
    this.webHookProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': ?actionGroupId,
      'webHookProperties': ?webHookProperties,
    };
  }

  factory MetricAlertActionResponse.fromMap(Map<String, dynamic> map) {
    return MetricAlertActionResponse(
      actionGroupId: map['actionGroupId'] == null ? null : map['actionGroupId'] as String,
      webHookProperties: map['webHookProperties'] == null ? null : (map['webHookProperties'] as Map).cast<String, String>(),
    );
  }
}

