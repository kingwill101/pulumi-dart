// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_backend_bucket_signed_url_key_backend_bucket_signed_url_key_args_doc}
/// The set of arguments for BackendBucketSignedUrlKey.
/// {@endtemplate}
/// {@macro pulumi_compute_backend_bucket_signed_url_key_backend_bucket_signed_url_key_args_doc}
class BackendBucketSignedUrlKeyArgs {
  /// The backend bucket this signed URL key belongs.
  final pulumi.Input<String> backendBucket;

  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> keyValue;

  /// Name of the signed URL key.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackendBucketSignedUrlKeyArgs].
  /// [backendBucket] The backend bucket this signed URL key belongs.
  /// [keyValue] 128-bit key value used for signing the URL. The key value must be a
  /// [name] Name of the signed URL key.
  /// [project] The ID of the project in which the resource belongs.
  BackendBucketSignedUrlKeyArgs({
    required String backendBucket,
    required String keyValue,
    String? name,
    String? project,
  })  : backendBucket = pulumi.Input.asInput<String>(backendBucket),
        keyValue = pulumi.Input.asInput<String>(keyValue),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendBucket'] = backendBucket;
    map['keyValue'] = keyValue;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BackendBucketSignedUrlKeyArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketSignedUrlKeyArgs(
      backendBucket: map['backendBucket'] as String,
      keyValue: map['keyValue'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
