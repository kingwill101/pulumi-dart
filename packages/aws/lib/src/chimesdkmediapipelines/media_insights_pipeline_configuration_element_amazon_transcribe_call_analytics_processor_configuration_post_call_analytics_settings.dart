// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings {
  /// Should output be redacted.
  final String? contentRedactionOutput;

  /// ARN of the role used by AWS Transcribe to upload your post call analysis.
  final String dataAccessRoleArn;

  /// ID of the KMS key used to encrypt the output.
  final String? outputEncryptionKmsKeyId;

  /// The Amazon S3 location where you want your Call Analytics post-call transcription output stored.
  final String outputLocation;

  /// Creates a new [MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings].
  /// [contentRedactionOutput] Should output be redacted.
  /// [dataAccessRoleArn] ARN of the role used by AWS Transcribe to upload your post call analysis.
  /// [outputEncryptionKmsKeyId] ID of the KMS key used to encrypt the output.
  /// [outputLocation] The Amazon S3 location where you want your Call Analytics post-call transcription output stored.
  MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings({
    this.contentRedactionOutput,
    required this.dataAccessRoleArn,
    this.outputEncryptionKmsKeyId,
    required this.outputLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentRedactionOutput': ?contentRedactionOutput,
      'dataAccessRoleArn': dataAccessRoleArn,
      'outputEncryptionKmsKeyId': ?outputEncryptionKmsKeyId,
      'outputLocation': outputLocation,
    };
  }

  factory MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings(
      contentRedactionOutput: map['contentRedactionOutput'] == null
          ? null
          : map['contentRedactionOutput'] as String,
      dataAccessRoleArn: map['dataAccessRoleArn'] as String,
      outputEncryptionKmsKeyId: map['outputEncryptionKmsKeyId'] == null
          ? null
          : map['outputEncryptionKmsKeyId'] as String,
      outputLocation: map['outputLocation'] as String,
    );
  }
}
