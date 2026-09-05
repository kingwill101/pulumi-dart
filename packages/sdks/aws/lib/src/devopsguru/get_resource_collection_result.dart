// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_collection_cloudformation.dart';
import 'get_resource_collection_tag.dart';

/// Result data returned by getResourceCollection.
class GetResourceCollectionResult {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  final List<GetResourceCollectionCloudformation>? cloudformations;
  /// Type of AWS resource collection to create (same value as `type`).
  final String? id;
  final String? region;
  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  final List<GetResourceCollectionTag>? tags;
  final String? type;

  /// Creates a new [GetResourceCollectionResult].
  /// [cloudformations] A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  /// [id] Type of AWS resource collection to create (same value as `type`).
  /// [region] Optional.
  /// [tags] AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  /// [type] Optional.
  const GetResourceCollectionResult({
    this.cloudformations,
    this.id,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudformations': ?(() { final guardedValue = cloudformations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourceCollectionCloudformation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'tags': ?(() { final guardedValue = tags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourceCollectionTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetResourceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionResult(
      cloudformations: (() { final guardedValue = map['cloudformations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourceCollectionCloudformation>(guardedValue, (value) => GetResourceCollectionCloudformation.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourceCollectionTag>(guardedValue, (value) => GetResourceCollectionTag.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
