// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_bucket_link_args_doc}
/// Arguments for getOrganizationBucketLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_bucket_link_args_doc}
class GetOrganizationBucketLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationBucketLinkArgs].
  /// [bucketId] Required.
  /// [linkId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationBucketLinkArgs({
    required String bucketId,
    required String linkId,
    required String location,
    required String organizationId,
  }) : bucketId = pulumi.Input.asInput<String>(bucketId),
       linkId = pulumi.Input.asInput<String>(linkId),
       location = pulumi.Input.asInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'linkId': linkId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketLinkArgs(
      bucketId: map['bucketId'] as String,
      linkId: map['linkId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
