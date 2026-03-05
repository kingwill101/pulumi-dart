// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A webhook receiver.
class WebhookReceiverResponse {
  /// Indicates the identifier uri for aad auth.
  final pulumi.Input<String>? identifierUri;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final pulumi.Input<String>? managedIdentity;
  /// The name of the webhook receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;
  /// Indicates the webhook app object Id for aad auth.
  final pulumi.Input<String>? objectId;
  /// The URI where webhooks should be sent.
  final pulumi.Input<String> serviceUri;
  /// Indicates the tenant id for aad auth.
  final pulumi.Input<String>? tenantId;
  /// Indicates whether or not use AAD authentication.
  final pulumi.Input<bool>? useAadAuth;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [WebhookReceiverResponse].
  /// [identifierUri] Indicates the identifier uri for aad auth.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the webhook receiver. Names must be unique across all receivers within a tenant action group.
  /// [objectId] Indicates the webhook app object Id for aad auth.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [tenantId] Indicates the tenant id for aad auth.
  /// [useAadAuth] Indicates whether or not use AAD authentication.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  WebhookReceiverResponse({
    this.identifierUri,
    this.managedIdentity,
    required this.name,
    this.objectId,
    required this.serviceUri,
    this.tenantId,
    this.useAadAuth,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifierUri': ?identifierUri,
      'managedIdentity': ?managedIdentity,
      'name': name,
      'objectId': ?objectId,
      'serviceUri': serviceUri,
      'tenantId': ?tenantId,
      'useAadAuth': ?useAadAuth,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory WebhookReceiverResponse.fromMap(Map<String, dynamic> map) {
    return WebhookReceiverResponse(
      identifierUri: (() { final guardedValue = map['identifierUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentity: (() { final guardedValue = map['managedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useAadAuth: (() { final guardedValue = map['useAadAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

