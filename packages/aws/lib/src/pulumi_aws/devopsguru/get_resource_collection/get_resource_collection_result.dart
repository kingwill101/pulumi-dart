// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resource_collection_cloudformation/get_resource_collection_cloudformation.dart';
import '../get_resource_collection_tag/get_resource_collection_tag.dart';

/// Result data returned by getResourceCollection.
class GetResourceCollectionResult {
  /// A collection of AWS CloudFormation stacks. See <span pulumi-lang-nodejs="`cloudformation`" pulumi-lang-dotnet="`Cloudformation`" pulumi-lang-go="`cloudformation`" pulumi-lang-python="`cloudformation`" pulumi-lang-yaml="`cloudformation`" pulumi-lang-java="`cloudformation`">`cloudformation`</span> below for additional details.
  final List<GetResourceCollectionCloudformation> cloudformations;

  /// Type of AWS resource collection to create (same value as <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>).
  final String id;
  final String region;

  /// AWS tags used to filter the resources in the resource collection. See <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> below for additional details.
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
    map['cloudformations'] = Input.encodeList<
        GetResourceCollectionCloudformation,
        Map<String, dynamic>>(cloudformations, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    map['tags'] =
        Input.encodeList<GetResourceCollectionTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetResourceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionResult(
      cloudformations: Input.decodeList<GetResourceCollectionCloudformation>(
          map['cloudformations'],
          (value) => GetResourceCollectionCloudformation.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: Input.decodeList<GetResourceCollectionTag>(
          map['tags'],
          (value) => GetResourceCollectionTag.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
