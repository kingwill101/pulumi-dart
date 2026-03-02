// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An azure function receiver.
class AzureFunctionReceiverResponse {
  /// The azure resource id of the function app.
  final pulumi.Input<String> functionAppResourceId;
  /// The function name in the function app.
  final pulumi.Input<String> functionName;
  /// The http trigger url where http request sent to.
  final pulumi.Input<String> httpTriggerUrl;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final pulumi.Input<String>? managedIdentity;
  /// The name of the azure function receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [AzureFunctionReceiverResponse].
  /// [functionAppResourceId] The azure resource id of the function app.
  /// [functionName] The function name in the function app.
  /// [httpTriggerUrl] The http trigger url where http request sent to.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the azure function receiver. Names must be unique across all receivers within an action group.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  AzureFunctionReceiverResponse({
    required this.functionAppResourceId,
    required this.functionName,
    required this.httpTriggerUrl,
    this.managedIdentity,
    required this.name,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppResourceId': functionAppResourceId,
      'functionName': functionName,
      'httpTriggerUrl': httpTriggerUrl,
      'managedIdentity': ?managedIdentity,
      'name': name,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory AzureFunctionReceiverResponse.fromMap(Map<String, dynamic> map) {
    return AzureFunctionReceiverResponse(
      functionAppResourceId: (map['functionAppResourceId'] as String).input(),
      functionName: (map['functionName'] as String).input(),
      httpTriggerUrl: (map['httpTriggerUrl'] as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (map['managedIdentity']! as String).input(),
      name: (map['name'] as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema']! as bool).input(),
    );
  }
}

