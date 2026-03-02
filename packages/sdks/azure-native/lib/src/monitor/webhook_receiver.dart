// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A webhook receiver.
class WebhookReceiver {
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

  /// Creates a new [WebhookReceiver].
  /// [identifierUri] Indicates the identifier uri for aad auth.
  /// [managedIdentity] The principal id of the managed identity. The value can be "None", "SystemAssigned"
  /// [name] The name of the webhook receiver. Names must be unique across all receivers within a tenant action group.
  /// [objectId] Indicates the webhook app object Id for aad auth.
  /// [serviceUri] The URI where webhooks should be sent.
  /// [tenantId] Indicates the tenant id for aad auth.
  /// [useAadAuth] Indicates whether or not use AAD authentication.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  WebhookReceiver({
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

  factory WebhookReceiver.fromMap(Map<String, dynamic> map) {
    return WebhookReceiver(
      identifierUri: map['identifierUri'] == null ? null : (map['identifierUri']! as String).input(),
      managedIdentity: map['managedIdentity'] == null ? null : (map['managedIdentity']! as String).input(),
      name: (map['name'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      serviceUri: (map['serviceUri'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      useAadAuth: map['useAadAuth'] == null ? null : (map['useAadAuth']! as bool).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema']! as bool).input(),
    );
  }
}

