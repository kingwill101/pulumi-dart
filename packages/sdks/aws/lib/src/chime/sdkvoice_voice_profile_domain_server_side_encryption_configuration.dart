// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration {
  /// ARN for KMS Key.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration].
  /// [kmsKeyArn] ARN for KMS Key.
  const SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}

