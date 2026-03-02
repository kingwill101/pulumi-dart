// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_side_encryption_configuration_rule.dart';

class BucketServerSideEncryptionConfiguration {
  /// Single object for server-side encryption by default configuration. (documented below)
  final pulumi.Input<BucketServerSideEncryptionConfigurationRule> rule;

  /// Creates a new [BucketServerSideEncryptionConfiguration].
  /// [rule] Single object for server-side encryption by default configuration. (documented below)
  BucketServerSideEncryptionConfiguration({
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': pulumi.Input.mapInputValue<BucketServerSideEncryptionConfigurationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory BucketServerSideEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfiguration(
      rule: (BucketServerSideEncryptionConfigurationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

