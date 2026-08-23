// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableServerSideEncryption {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [GetTableServerSideEncryption].
  /// [enabled] Required.
  /// [kmsKeyArn] Required.
  const GetTableServerSideEncryption({
    required this.enabled,
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory GetTableServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return GetTableServerSideEncryption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
