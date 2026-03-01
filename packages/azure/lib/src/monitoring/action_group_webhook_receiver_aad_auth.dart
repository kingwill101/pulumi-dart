// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupWebhookReceiverAadAuth {
  /// The identifier URI for AAD auth.
  final String? identifierUri;
  /// The webhook application object Id for AAD auth.
  final String objectId;
  /// The tenant id for AAD auth.
  final String? tenantId;

  /// Creates a new [ActionGroupWebhookReceiverAadAuth].
  /// [identifierUri] The identifier URI for AAD auth.
  /// [objectId] The webhook application object Id for AAD auth.
  /// [tenantId] The tenant id for AAD auth.
  ActionGroupWebhookReceiverAadAuth({
    this.identifierUri,
    required this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifierUri': ?identifierUri,
      'objectId': objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ActionGroupWebhookReceiverAadAuth.fromMap(Map<String, dynamic> map) {
    return ActionGroupWebhookReceiverAadAuth(
      identifierUri: map['identifierUri'] == null ? null : map['identifierUri'] as String,
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

