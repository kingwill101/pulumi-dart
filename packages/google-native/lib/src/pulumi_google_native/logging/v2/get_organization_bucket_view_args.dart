// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationBucketView.
class GetOrganizationBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> viewId;

  GetOrganizationBucketViewArgs({
    required this.bucketId,
    required this.location,
    required this.organizationId,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['viewId'] = viewId;
    return map;
  }

  factory GetOrganizationBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketViewArgs(
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      viewId: pulumi.Input.asInput<String>(map['viewId']),
    );
  }
}
