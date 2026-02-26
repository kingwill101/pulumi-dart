// ignore_for_file: unused_element, unnecessary_cast

class DataTransferConfigSensitiveParams {
  /// The Secret Access Key of the AWS account transferring data from.
  final String? secretAccessKey;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The Secret Access Key of the AWS account transferring data from.
  final String? secretAccessKeyWo;

  /// The version of the sensitive params - used to trigger updates of the write-only params. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final int? secretAccessKeyWoVersion;

  DataTransferConfigSensitiveParams({
    this.secretAccessKey,
    this.secretAccessKeyWo,
    this.secretAccessKeyWoVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final secretAccessKeyValue = secretAccessKey;
    if (secretAccessKeyValue != null) {
      map['secretAccessKey'] = secretAccessKeyValue;
    }
    final secretAccessKeyWoValue = secretAccessKeyWo;
    if (secretAccessKeyWoValue != null) {
      map['secretAccessKeyWo'] = secretAccessKeyWoValue;
    }
    final secretAccessKeyWoVersionValue = secretAccessKeyWoVersion;
    if (secretAccessKeyWoVersionValue != null) {
      map['secretAccessKeyWoVersion'] = secretAccessKeyWoVersionValue;
    }
    return map;
  }

  factory DataTransferConfigSensitiveParams.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigSensitiveParams(
      secretAccessKey: map['secretAccessKey'] == null
          ? null
          : map['secretAccessKey'] as String,
      secretAccessKeyWo: map['secretAccessKeyWo'] == null
          ? null
          : map['secretAccessKeyWo'] as String,
      secretAccessKeyWoVersion: map['secretAccessKeyWoVersion'] == null
          ? null
          : map['secretAccessKeyWoVersion'] as int,
    );
  }
}
