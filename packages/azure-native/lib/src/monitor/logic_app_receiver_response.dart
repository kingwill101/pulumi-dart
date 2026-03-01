// ignore_for_file: unused_element, unnecessary_cast


/// A logic app receiver.
class LogicAppReceiverResponse {
  /// The callback url where http request sent to.
  final String callbackUrl;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final String? managedIdentity;
  /// The name of the logic app receiver. Names must be unique across all receivers within an action group.
  final String name;
  /// The azure resource id of the logic app receiver.
  final String resourceId;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [LogicAppReceiverResponse].
  /// [callbackUrl] The callback url where http request sent to.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the logic app receiver. Names must be unique across all receivers within an action group.
  /// [resourceId] The azure resource id of the logic app receiver.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  LogicAppReceiverResponse({
    required this.callbackUrl,
    this.managedIdentity,
    required this.name,
    required this.resourceId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUrl': callbackUrl,
      'managedIdentity': ?managedIdentity,
      'name': name,
      'resourceId': resourceId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory LogicAppReceiverResponse.fromMap(Map<String, dynamic> map) {
    return LogicAppReceiverResponse(
      callbackUrl: map['callbackUrl'] as String,
      managedIdentity: map['managedIdentity'] == null ? null : map['managedIdentity'] as String,
      name: map['name'] as String,
      resourceId: map['resourceId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

