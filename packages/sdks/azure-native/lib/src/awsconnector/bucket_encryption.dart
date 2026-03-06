// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_side_encryption_rule.dart';

/// Definition of BucketEncryption
class BucketEncryption {
  /// Specifies the default server-side-encryption configuration.
  final pulumi.Input<List<ServerSideEncryptionRule>>? serverSideEncryptionConfiguration;

  /// Creates a new [BucketEncryption].
  /// [serverSideEncryptionConfiguration] Specifies the default server-side-encryption configuration.
  const BucketEncryption({
    this.serverSideEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<List<ServerSideEncryptionRule>, List<Map<String, dynamic>>>(serverSideEncryptionConfiguration, (value) => pulumi.Input.encodeList<ServerSideEncryptionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketEncryption.fromMap(Map<String, dynamic> map) {
    return BucketEncryption(
      serverSideEncryptionConfiguration: (() { final guardedValue = map['serverSideEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerSideEncryptionRule>(guardedValue, (value) => ServerSideEncryptionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

