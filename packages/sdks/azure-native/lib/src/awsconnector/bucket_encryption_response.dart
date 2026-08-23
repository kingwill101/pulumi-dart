// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_side_encryption_rule_response.dart';

/// Definition of BucketEncryption
class BucketEncryptionResponse {
  /// Specifies the default server-side-encryption configuration.
  final pulumi.Input<List<ServerSideEncryptionRuleResponse>>? serverSideEncryptionConfiguration;

  /// Creates a new [BucketEncryptionResponse].
  /// [serverSideEncryptionConfiguration] Specifies the default server-side-encryption configuration.
  const BucketEncryptionResponse({
    this.serverSideEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<List<ServerSideEncryptionRuleResponse>, List<Map<String, dynamic>>>(serverSideEncryptionConfiguration, (value) => pulumi.Input.encodeList<ServerSideEncryptionRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return BucketEncryptionResponse(
      serverSideEncryptionConfiguration: (() { final guardedValue = map['serverSideEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerSideEncryptionRuleResponse>(guardedValue, (value) => ServerSideEncryptionRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
