// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_data_redundancy_transition_bucket_data_redundancy_transition_args_doc}
/// The set of arguments for BucketDataRedundancyTransition.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_data_redundancy_transition_bucket_data_redundancy_transition_args_doc}
class BucketDataRedundancyTransitionArgs {
  /// Storage space name.
  final pulumi.Input<String> bucket;

  /// Creates a new [BucketDataRedundancyTransitionArgs].
  /// [bucket] Storage space name.
  const BucketDataRedundancyTransitionArgs({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
    };
  }

  factory BucketDataRedundancyTransitionArgs.fromMap(Map<String, dynamic> map) {
    return BucketDataRedundancyTransitionArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
    );
  }
}

