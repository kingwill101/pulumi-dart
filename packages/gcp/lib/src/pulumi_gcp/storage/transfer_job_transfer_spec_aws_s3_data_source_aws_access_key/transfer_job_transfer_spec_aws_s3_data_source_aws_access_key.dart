// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecAwsS3DataSourceAwsAccessKey {
  /// AWS Key ID.
  final String accessKeyId;

  /// AWS Secret Access Key.
  final String secretAccessKey;

  TransferJobTransferSpecAwsS3DataSourceAwsAccessKey({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyId'] = accessKeyId;
    map['secretAccessKey'] = secretAccessKey;
    return map;
  }

  factory TransferJobTransferSpecAwsS3DataSourceAwsAccessKey.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3DataSourceAwsAccessKey(
      accessKeyId: map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] as String,
    );
  }
}
