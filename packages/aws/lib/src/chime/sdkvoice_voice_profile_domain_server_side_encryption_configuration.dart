// ignore_for_file: unused_element, unnecessary_cast

class SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration {
  /// ARN for KMS Key.
  ///
  /// The following arguments are optional:
  final String kmsKeyArn;

  /// Creates a new [SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration].
  /// [kmsKeyArn] ARN for KMS Key.
  SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyArn': kmsKeyArn};
  }

  factory SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
