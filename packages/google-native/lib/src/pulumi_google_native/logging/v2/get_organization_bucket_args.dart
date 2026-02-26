// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationBucket.
class GetOrganizationBucketArgs {
  final Input<String> bucketId;
  final Input<String> location;
  final Input<String> organizationId;

  GetOrganizationBucketArgs({
    required this.bucketId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
