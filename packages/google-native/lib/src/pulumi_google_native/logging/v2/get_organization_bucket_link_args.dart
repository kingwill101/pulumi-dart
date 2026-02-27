// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationBucketLink.
class GetOrganizationBucketLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

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
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      linkId: pulumi.Input.asInput<String>(map['linkId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
