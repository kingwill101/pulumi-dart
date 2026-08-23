// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_collection_group_capacity_limit.dart';

/// Result data returned by getServerlessCollectionGroup.
class GetServerlessCollectionGroupResult {
  /// Amazon Resource Name (ARN) of the collection group.
  final String arn;
  /// Capacity limits configured for the collection group. See `capacityLimits` below for details.
  final List<GetServerlessCollectionGroupCapacityLimit> capacityLimits;
  /// Date the collection group was created.
  final String createdDate;
  /// Description of the collection group.
  final String description;
  /// Generation of Amazon OpenSearch Serverless for the collection group.
  final String generation;
  final String id;
  final String name;
  final String region;
  /// Indicates whether standby replicas should be used for collections in this group.
  final String standbyReplicas;
  /// A map of tags assigned to the collection group.
  final Map<String, String> tags;

  /// Creates a new [GetServerlessCollectionGroupResult].
  /// [arn] Amazon Resource Name (ARN) of the collection group.
  /// [capacityLimits] Capacity limits configured for the collection group. See `capacityLimits` below for details.
  /// [createdDate] Date the collection group was created.
  /// [description] Description of the collection group.
  /// [generation] Generation of Amazon OpenSearch Serverless for the collection group.
  /// [id] Required.
  /// [name] Required.
  /// [region] Required.
  /// [standbyReplicas] Indicates whether standby replicas should be used for collections in this group.
  /// [tags] A map of tags assigned to the collection group.
  const GetServerlessCollectionGroupResult({
    required this.arn,
    required this.capacityLimits,
    required this.createdDate,
    required this.description,
    required this.generation,
    required this.id,
    required this.name,
    required this.region,
    required this.standbyReplicas,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'capacityLimits': pulumi.Input.encodeList<GetServerlessCollectionGroupCapacityLimit, Map<String, dynamic>>(capacityLimits, (value) => value.toMap()),
      'createdDate': createdDate,
      'description': description,
      'generation': generation,
      'id': id,
      'name': name,
      'region': region,
      'standbyReplicas': standbyReplicas,
      'tags': tags,
    };
  }

  factory GetServerlessCollectionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupResult(
      arn: map['arn'] as String,
      capacityLimits: pulumi.Input.decodeList<GetServerlessCollectionGroupCapacityLimit>(map['capacityLimits']!, (value) => GetServerlessCollectionGroupCapacityLimit.fromMap((value as Map).cast<String, dynamic>())),
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      generation: map['generation'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      standbyReplicas: map['standbyReplicas'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
