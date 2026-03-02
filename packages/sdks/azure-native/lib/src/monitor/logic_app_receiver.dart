// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A logic app receiver.
class LogicAppReceiver {
  /// The callback url where http request sent to.
  final pulumi.Input<String> callbackUrl;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final pulumi.Input<String>? managedIdentity;
  /// The name of the logic app receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;
  /// The azure resource id of the logic app receiver.
  final pulumi.Input<String> resourceId;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [LogicAppReceiver].
  /// [callbackUrl] The callback url where http request sent to.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the logic app receiver. Names must be unique across all receivers within an action group.
  /// [resourceId] The azure resource id of the logic app receiver.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  LogicAppReceiver({
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

  factory LogicAppReceiver.fromMap(Map<String, dynamic> map) {
    return LogicAppReceiver(
      callbackUrl: (map['callbackUrl'] as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (map['managedIdentity']! as String).input(),
      name: (map['name'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema']! as bool).input(),
    );
  }
}

