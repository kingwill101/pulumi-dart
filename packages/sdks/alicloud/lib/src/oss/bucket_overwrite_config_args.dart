// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_overwrite_config_rule.dart';

/// {@template pulumi_oss_bucket_overwrite_config_bucket_overwrite_config_args_doc}
/// The set of arguments for BucketOverwriteConfig.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_overwrite_config_bucket_overwrite_config_args_doc}
class BucketOverwriteConfigArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;

  /// Forbid overwrite rule See `rule` below.
  final pulumi.Input<List<BucketOverwriteConfigRule>>? rules;

  /// Creates a new [BucketOverwriteConfigArgs].
  /// [bucket] The name of the bucket
  /// [rules] Forbid overwrite rule See `rule` below.
  BucketOverwriteConfigArgs({required this.bucket, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketOverwriteConfigRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  BucketOverwriteConfigRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketOverwriteConfigArgs.fromMap(Map<String, dynamic> map) {
    return BucketOverwriteConfigArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BucketOverwriteConfigRule>(
            guardedValue,
            (value) => BucketOverwriteConfigRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
