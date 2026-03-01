// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_side_encryption_rule_response.dart';

/// Definition of BucketEncryption
class BucketEncryptionResponse {
  /// Specifies the default server-side-encryption configuration.
  final List<ServerSideEncryptionRuleResponse>? serverSideEncryptionConfiguration;

  /// Creates a new [BucketEncryptionResponse].
  /// [serverSideEncryptionConfiguration] Specifies the default server-side-encryption configuration.
  BucketEncryptionResponse({
    this.serverSideEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverSideEncryptionConfiguration': ?serverSideEncryptionConfiguration == null ? null : pulumi.Input.encodeList<ServerSideEncryptionRuleResponse, Map<String, dynamic>>(serverSideEncryptionConfiguration!, (value) => value.toMap()),
    };
  }

  factory BucketEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return BucketEncryptionResponse(
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : pulumi.Input.decodeList<ServerSideEncryptionRuleResponse>(map['serverSideEncryptionConfiguration'], (value) => ServerSideEncryptionRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

