// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_bucket_view_args_doc}
/// Arguments for getBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_bucket_view_args_doc}
class GetBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> viewId;

  /// Creates a new [GetBucketViewArgs].
  /// [bucketId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [viewId] Required.
  GetBucketViewArgs({
    required String bucketId,
    required String location,
    String? project,
    required String viewId,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      viewId = pulumi.Input.asInput<String>(viewId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'location': location,
      'project': ?project,
      'viewId': viewId,
    };
  }

  factory GetBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketViewArgs(
      bucketId: map['bucketId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      viewId: map['viewId'] as String,
    );
  }
}

