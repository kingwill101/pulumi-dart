// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_overwrite_config_rule_principals.dart';

class BucketOverwriteConfigRule {
  /// The operation type. Currently, only "forbid" is supported.
  final pulumi.Input<String>? action;

  /// Rule ID
  final pulumi.Input<String>? id;

  /// The prefix of the Object name, which is used to filter objects to be processed.
  final pulumi.Input<String>? prefix;

  /// A collection of authorized principals. The usage is similar to that of the Principal of the Bucket Policy. You can enter the primary account, sub-account, or role. If this parameter is empty or not configured, overwriting is not allowed for objects that meet the preceding and suffix conditions. See `principals` below.
  final pulumi.Input<BucketOverwriteConfigRulePrincipals>? principals;

  /// The suffix of the Object name, which is used to filter objects to be processed.
  final pulumi.Input<String>? suffix;

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
      'principals':
          ?pulumi.Input.mapOptionalInputValue<
            BucketOverwriteConfigRulePrincipals,
            Map<String, dynamic>
          >(principals, (value) => value.toMap()),
      'suffix': ?suffix,
    };
  }

  factory BucketOverwriteConfigRule.fromMap(Map<String, dynamic> map) {
    return BucketOverwriteConfigRule(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principals: (() {
        final guardedValue = map['principals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketOverwriteConfigRulePrincipals.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      suffix: (() {
        final guardedValue = map['suffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
