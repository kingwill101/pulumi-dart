// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_linode_object_storage_bucket_get_linode_object_storage_bucket_args_doc}
/// Arguments for getLinodeObjectStorageBucket.
/// {@endtemplate}
/// {@macro pulumi_index_get_linode_object_storage_bucket_get_linode_object_storage_bucket_args_doc}
class GetLinodeObjectStorageBucketArgs {
  /// The ID of the Object Storage Cluster this bucket is in. Required if `region` is not configured.
  final pulumi.Input<String>? cluster;
  /// The name of this bucket.
  final pulumi.Input<String> label;
  /// The ID of the region this bucket is in. Required if `cluster` is not configured.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLinodeObjectStorageBucketArgs].
  /// [cluster] The ID of the Object Storage Cluster this bucket is in. Required if `region` is not configured.
  /// [label] The name of this bucket.
  /// [region] The ID of the region this bucket is in. Required if `cluster` is not configured.
  GetLinodeObjectStorageBucketArgs({
    String? cluster,
    required String label,
    String? region,
  }) :
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      label = pulumi.Input.asInput<String>(label),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'label': label,
      'region': ?region,
    };
  }

  factory GetLinodeObjectStorageBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetLinodeObjectStorageBucketArgs(
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      label: map['label'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

