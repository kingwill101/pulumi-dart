// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_overwrite_config_rule_principals.dart';

class BucketOverwriteConfigRule {
  /// The operation type. Currently, only "forbid" is supported.
  final String? action;
  /// Rule ID
  final String? id;
  /// The prefix of the Object name, which is used to filter objects to be processed.
  final String? prefix;
  /// A collection of authorized principals. The usage is similar to that of the Principal of the Bucket Policy. You can enter the primary account, sub-account, or role. If this parameter is empty or not configured, overwriting is not allowed for objects that meet the preceding and suffix conditions. See `principals` below.
  final BucketOverwriteConfigRulePrincipals? principals;
  /// The suffix of the Object name, which is used to filter objects to be processed.
  final String? suffix;

  /// Creates a new [BucketOverwriteConfigRule].
  /// [action] The operation type. Currently, only "forbid" is supported.
  /// [id] Rule ID
  /// [prefix] The prefix of the Object name, which is used to filter objects to be processed.
  /// [principals] A collection of authorized principals. The usage is similar to that of the Principal of the Bucket Policy. You can enter the primary account, sub-account, or role. If this parameter is empty or not configured, overwriting is not allowed for objects that meet the preceding and suffix conditions. See `principals` below.
  /// [suffix] The suffix of the Object name, which is used to filter objects to be processed.
  BucketOverwriteConfigRule({
    this.action,
    this.id,
    this.prefix,
    this.principals,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'id': ?id,
      'prefix': ?prefix,
      'principals': ?principals == null ? null : principals!.toMap(),
      'suffix': ?suffix,
    };
  }

  factory BucketOverwriteConfigRule.fromMap(Map<String, dynamic> map) {
    return BucketOverwriteConfigRule(
      action: map['action'] == null ? null : map['action'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      principals: map['principals'] == null ? null : BucketOverwriteConfigRulePrincipals.fromMap((map['principals'] as Map).cast<String, dynamic>()),
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}

