// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_side_encryption_rule.dart';

/// Definition of BucketEncryption
class BucketEncryption {
  /// Specifies the default server-side-encryption configuration.
  final List<ServerSideEncryptionRule>? serverSideEncryptionConfiguration;

  /// Creates a new [BucketEncryption].
  /// [serverSideEncryptionConfiguration] Specifies the default server-side-encryption configuration.
  BucketEncryption({
    this.serverSideEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverSideEncryptionConfiguration': ?serverSideEncryptionConfiguration == null ? null : pulumi.Input.encodeList<ServerSideEncryptionRule, Map<String, dynamic>>(serverSideEncryptionConfiguration!, (value) => value.toMap()),
    };
  }

  factory BucketEncryption.fromMap(Map<String, dynamic> map) {
    return BucketEncryption(
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : pulumi.Input.decodeList<ServerSideEncryptionRule>(map['serverSideEncryptionConfiguration'], (value) => ServerSideEncryptionRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

