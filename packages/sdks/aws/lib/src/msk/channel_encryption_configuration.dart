// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncryptionConfiguration {
  /// ARN of the AWS KMS key used to encrypt the data.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [ChannelEncryptionConfiguration].
  /// [kmsKeyArn] ARN of the AWS KMS key used to encrypt the data.
  const ChannelEncryptionConfiguration({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory ChannelEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ChannelEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
