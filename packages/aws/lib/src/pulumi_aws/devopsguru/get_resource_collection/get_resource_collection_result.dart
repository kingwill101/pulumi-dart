// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_resource_collection_cloudformation/get_resource_collection_cloudformation.dart';
import '../get_resource_collection_tag/get_resource_collection_tag.dart';

/// Result data returned by getResourceCollection.
class GetResourceCollectionResult {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  final List<GetResourceCollectionCloudformation> cloudformations;

  /// Type of AWS resource collection to create (same value as `type`).
  final String id;
  final String region;

  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  final List<GetResourceCollectionTag> tags;
  final String type;

  GetResourceCollectionResult({
    required this.cloudformations,
    required this.id,
    required this.region,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudformations'] = pulumi.Input.encodeList<
        GetResourceCollectionCloudformation,
        Map<String, dynamic>>(cloudformations, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    map['tags'] =
        pulumi.Input.encodeList<GetResourceCollectionTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetResourceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionResult(
      cloudformations:
          pulumi.Input.decodeList<GetResourceCollectionCloudformation>(
              map['cloudformations'],
              (value) => GetResourceCollectionCloudformation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: pulumi.Input.decodeList<GetResourceCollectionTag>(
          map['tags'],
          (value) => GetResourceCollectionTag.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
