// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeConfigurationEncryptionConfiguration {
  /// The id of KMS encryption key used by Amazon Security Lake to encrypt the Security Lake object.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [DataLakeConfigurationEncryptionConfiguration].
  /// [kmsKeyId] The id of KMS encryption key used by Amazon Security Lake to encrypt the Security Lake object.
  const DataLakeConfigurationEncryptionConfiguration({
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': kmsKeyId,
    };
  }

  factory DataLakeConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DataLakeConfigurationEncryptionConfiguration(
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}
