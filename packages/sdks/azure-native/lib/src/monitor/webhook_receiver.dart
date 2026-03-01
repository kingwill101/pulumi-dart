// ignore_for_file: unused_element, unnecessary_cast


/// A webhook receiver.
class WebhookReceiver {
  /// Indicates the identifier uri for aad auth.
  final String? identifierUri;
  /// The principal id of the managed identity. The value can be "None", "SystemAssigned"
  final String? managedIdentity;
  /// The name of the webhook receiver. Names must be unique across all receivers within a tenant action group.
  final String name;
  /// Indicates the webhook app object Id for aad auth.
  final String? objectId;
  /// The URI where webhooks should be sent.
  final String serviceUri;
  /// Indicates the tenant id for aad auth.
  final String? tenantId;
  /// Indicates whether or not use AAD authentication.
  final bool? useAadAuth;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

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
      identifierUri: map['identifierUri'] == null ? null : map['identifierUri'] as String,
      managedIdentity: map['managedIdentity'] == null ? null : map['managedIdentity'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      serviceUri: map['serviceUri'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      useAadAuth: map['useAadAuth'] == null ? null : map['useAadAuth'] as bool,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

