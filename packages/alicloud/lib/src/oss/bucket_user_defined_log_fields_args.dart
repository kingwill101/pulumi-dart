// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_user_defined_log_fields_bucket_user_defined_log_fields_args_doc}
/// The set of arguments for BucketUserDefinedLogFields.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_user_defined_log_fields_bucket_user_defined_log_fields_args_doc}
class BucketUserDefinedLogFieldsArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// Container for custom request header configuration information.
  final pulumi.Input<List<String>>? headerSets;
  /// Container for custom request parameters configuration information.
  final pulumi.Input<List<String>>? paramSets;

  /// Creates a new [BucketUserDefinedLogFieldsArgs].
  /// [bucket] The name of the bucket.
  /// [headerSets] Container for custom request header configuration information.
  /// [paramSets] Container for custom request parameters configuration information.
  BucketUserDefinedLogFieldsArgs({
    required String bucket,
    List<String>? headerSets,
    List<String>? paramSets,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      headerSets = pulumi.Input.asOptionalInput<List<String>>(headerSets),
      paramSets = pulumi.Input.asOptionalInput<List<String>>(paramSets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'headerSets': ?headerSets,
      'paramSets': ?paramSets,
    };
  }

  factory BucketUserDefinedLogFieldsArgs.fromMap(Map<String, dynamic> map) {
    return BucketUserDefinedLogFieldsArgs(
      bucket: map['bucket'] as String,
      headerSets: map['headerSets'] == null ? null : (map['headerSets'] as List).cast<String>(),
      paramSets: map['paramSets'] == null ? null : (map['paramSets'] as List).cast<String>(),
    );
  }
}

