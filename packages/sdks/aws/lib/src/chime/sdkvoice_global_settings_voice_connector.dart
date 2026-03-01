// ignore_for_file: unused_element, unnecessary_cast


class SdkvoiceGlobalSettingsVoiceConnector {
  /// The S3 bucket that stores the Voice Connector's call detail records.
  final String? cdrBucket;

  /// Creates a new [SdkvoiceGlobalSettingsVoiceConnector].
  /// [cdrBucket] The S3 bucket that stores the Voice Connector's call detail records.
  SdkvoiceGlobalSettingsVoiceConnector({
    this.cdrBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdrBucket': ?cdrBucket,
    };
  }

  factory SdkvoiceGlobalSettingsVoiceConnector.fromMap(Map<String, dynamic> map) {
    return SdkvoiceGlobalSettingsVoiceConnector(
      cdrBucket: map['cdrBucket'] == null ? null : map['cdrBucket'] as String,
    );
  }
}

