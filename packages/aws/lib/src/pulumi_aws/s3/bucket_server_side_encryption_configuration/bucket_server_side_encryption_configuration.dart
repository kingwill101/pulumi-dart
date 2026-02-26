// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_server_side_encryption_configuration_rule/bucket_server_side_encryption_configuration_rule.dart';

class BucketServerSideEncryptionConfiguration {
  /// Single object for server-side encryption by default configuration. (documented below)
  final BucketServerSideEncryptionConfigurationRule rule;

  BucketServerSideEncryptionConfiguration({
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rule'] = rule.toMap();
    return map;
  }

  factory BucketServerSideEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfiguration(
      rule: BucketServerSideEncryptionConfigurationRule.fromMap(
          (map['rule'] as Map).cast<String, dynamic>()),
    );
  }
}
