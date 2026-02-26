// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationBucketLink.
class GetOrganizationBucketLinkArgs {
  final Input<String> bucketId;
  final Input<String> linkId;
  final Input<String> location;
  final Input<String> organizationId;

  GetOrganizationBucketLinkArgs({
    required this.bucketId,
    required this.linkId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['linkId'] = linkId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketLinkArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      linkId: Input.asInput<String>(map['linkId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
