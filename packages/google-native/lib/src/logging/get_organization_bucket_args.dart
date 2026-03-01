// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_bucket_args_doc}
/// Arguments for getOrganizationBucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_bucket_args_doc}
class GetOrganizationBucketArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationBucketArgs].
  /// [bucketId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationBucketArgs({
    required String bucketId,
    required String location,
    required String organizationId,
  }) : bucketId = pulumi.Input.asInput<String>(bucketId),
       location = pulumi.Input.asInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketArgs(
      bucketId: map['bucketId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
