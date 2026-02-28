// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsSharingSettings {
  /// Whether to include the notebook cell output when sharing the notebook. The default is `Disabled`. Valid values are `Allowed` and `Disabled`.
  final String? notebookOutputOption;

  /// When `notebook_output_option` is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket.
  final String? s3KmsKeyId;

  /// When `notebook_output_option` is Allowed, the Amazon S3 bucket used to save the notebook cell output.
  final String? s3OutputPath;

  /// Creates a new [DomainDefaultUserSettingsSharingSettings].
  /// [notebookOutputOption] Whether to include the notebook cell output when sharing the notebook. The default is `Disabled`. Valid values are `Allowed` and `Disabled`.
  /// [s3KmsKeyId] When `notebook_output_option` is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket.
  /// [s3OutputPath] When `notebook_output_option` is Allowed, the Amazon S3 bucket used to save the notebook cell output.
  DomainDefaultUserSettingsSharingSettings({
    this.notebookOutputOption,
    this.s3KmsKeyId,
    this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notebookOutputOptionValue = notebookOutputOption;
    if (notebookOutputOptionValue != null) {
      map['notebookOutputOption'] = notebookOutputOptionValue;
    }
    final s3KmsKeyIdValue = s3KmsKeyId;
    if (s3KmsKeyIdValue != null) {
      map['s3KmsKeyId'] = s3KmsKeyIdValue;
    }
    final s3OutputPathValue = s3OutputPath;
    if (s3OutputPathValue != null) {
      map['s3OutputPath'] = s3OutputPathValue;
    }
    return map;
  }

  factory DomainDefaultUserSettingsSharingSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsSharingSettings(
      notebookOutputOption: map['notebookOutputOption'] == null
          ? null
          : map['notebookOutputOption'] as String,
      s3KmsKeyId:
          map['s3KmsKeyId'] == null ? null : map['s3KmsKeyId'] as String,
      s3OutputPath:
          map['s3OutputPath'] == null ? null : map['s3OutputPath'] as String,
    );
  }
}
