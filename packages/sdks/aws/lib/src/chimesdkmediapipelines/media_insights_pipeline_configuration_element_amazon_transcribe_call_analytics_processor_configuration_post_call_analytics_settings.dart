// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings {
  /// Should output be redacted.
  final pulumi.Input<String>? contentRedactionOutput;
  /// ARN of the role used by AWS Transcribe to upload your post call analysis.
  final pulumi.Input<String> dataAccessRoleArn;
  /// ID of the KMS key used to encrypt the output.
  final pulumi.Input<String>? outputEncryptionKmsKeyId;
  /// The Amazon S3 location where you want your Call Analytics post-call transcription output stored.
  final pulumi.Input<String> outputLocation;

  /// Creates a new [MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings].
  /// [contentRedactionOutput] Should output be redacted.
  /// [dataAccessRoleArn] ARN of the role used by AWS Transcribe to upload your post call analysis.
  /// [outputEncryptionKmsKeyId] ID of the KMS key used to encrypt the output.
  /// [outputLocation] The Amazon S3 location where you want your Call Analytics post-call transcription output stored.
  const MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings({
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

  factory MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationPostCallAnalyticsSettings(
      contentRedactionOutput: (() { final guardedValue = map['contentRedactionOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAccessRoleArn: pulumi.Input.fromValue(map['dataAccessRoleArn'] as String),
      outputEncryptionKmsKeyId: (() { final guardedValue = map['outputEncryptionKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputLocation: pulumi.Input.fromValue(map['outputLocation'] as String),
    );
  }
}
