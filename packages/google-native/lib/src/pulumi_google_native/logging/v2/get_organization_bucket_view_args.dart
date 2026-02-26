// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationBucketView.
class GetOrganizationBucketViewArgs {
  final Input<String> bucketId;
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> viewId;

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
      bucketId: Input.asInput<String>(map['bucketId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      viewId: Input.asInput<String>(map['viewId']),
    );
  }
}
