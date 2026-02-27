// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_v2_server_side_encryption_configuration_rule/bucket_v2_server_side_encryption_configuration_rule.dart';

class BucketV2ServerSideEncryptionConfiguration {
  /// Single object for server-side encryption by default configuration. (documented below)
  final List<BucketV2ServerSideEncryptionConfigurationRule> rules;

  BucketV2ServerSideEncryptionConfiguration({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] = pulumi.Input.encodeList<
        BucketV2ServerSideEncryptionConfigurationRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory BucketV2ServerSideEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ServerSideEncryptionConfiguration(
      rules: pulumi.Input.decodeList<
              BucketV2ServerSideEncryptionConfigurationRule>(
          map['rules'],
          (value) => BucketV2ServerSideEncryptionConfigurationRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
