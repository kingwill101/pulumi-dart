// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupWebhookReceiverAadAuth {
  final String identifierUri;
  final String objectId;
  /// The Tenant ID for the subscription containing this Event Hub.
  final String tenantId;

  /// Creates a new [GetActionGroupWebhookReceiverAadAuth].
  /// [identifierUri] Required.
  /// [objectId] Required.
  /// [tenantId] The Tenant ID for the subscription containing this Event Hub.
  GetActionGroupWebhookReceiverAadAuth({
    required this.identifierUri,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifierUri': identifierUri,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory GetActionGroupWebhookReceiverAadAuth.fromMap(Map<String, dynamic> map) {
    return GetActionGroupWebhookReceiverAadAuth(
      identifierUri: map['identifierUri'] as String,
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

