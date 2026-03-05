// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SdkvoiceGlobalSettingsVoiceConnector {
  /// The S3 bucket that stores the Voice Connector's call detail records.
  final pulumi.Input<String>? cdrBucket;

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
      cdrBucket: (() { final guardedValue = map['cdrBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

