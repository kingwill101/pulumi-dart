// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the encrypting customer core content. NEXT ID: 2
class GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse {
  /// Optional. The Cloud KMS key name to use for encrypting customer core content.
  final String kmsKey;

  /// Creates a new [GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse].
  /// [kmsKey] Optional. The Cloud KMS key name to use for encrypting customer core content.
  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': kmsKey};
  }

  factory GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
