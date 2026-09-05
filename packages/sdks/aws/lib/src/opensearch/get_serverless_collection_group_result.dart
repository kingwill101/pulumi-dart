// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_collection_group_capacity_limit.dart';

/// Result data returned by getServerlessCollectionGroup.
class GetServerlessCollectionGroupResult {
  /// ARN of the collection group.
  final String? arn;
  /// Capacity limits configured for the collection group. See `capacityLimits` below for details.
  final List<GetServerlessCollectionGroupCapacityLimit>? capacityLimits;
  /// Date the collection group was created.
  final String? createdDate;
  /// Description of the collection group.
  final String? description;
  /// Generation of Amazon OpenSearch Serverless for the collection group.
  final String? generation;
  final String? id;
  final String? name;
  final String? region;
  /// Indicates whether standby replicas should be used for collections in this group.
  final String? standbyReplicas;
  /// A map of tags assigned to the collection group.
  final Map<String, String>? tags;

  /// Creates a new [GetServerlessCollectionGroupResult].
  /// [arn] ARN of the collection group.
  /// [capacityLimits] Capacity limits configured for the collection group. See `capacityLimits` below for details.
  /// [createdDate] Date the collection group was created.
  /// [description] Description of the collection group.
  /// [generation] Generation of Amazon OpenSearch Serverless for the collection group.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [standbyReplicas] Indicates whether standby replicas should be used for collections in this group.
  /// [tags] A map of tags assigned to the collection group.
  const GetServerlessCollectionGroupResult({
    this.arn,
    this.capacityLimits,
    this.createdDate,
    this.description,
    this.generation,
    this.id,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacityLimits': ?(() { final guardedValue = capacityLimits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessCollectionGroupCapacityLimit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdDate': ?createdDate,
      'description': ?description,
      'generation': ?generation,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'standbyReplicas': ?standbyReplicas,
      'tags': ?tags,
    };
  }

  factory GetServerlessCollectionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityLimits: (() { final guardedValue = map['capacityLimits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessCollectionGroupCapacityLimit>(guardedValue, (value) => GetServerlessCollectionGroupCapacityLimit.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyReplicas: (() { final guardedValue = map['standbyReplicas']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
