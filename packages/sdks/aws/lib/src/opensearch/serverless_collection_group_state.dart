// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_group_capacity_limit.dart';

/// Input properties used for looking up and filtering ServerlessCollectionGroup resources.
class ServerlessCollectionGroupState {
  /// Amazon Resource Name (ARN) of the collection group.
  final pulumi.Input<String>? arn;
  /// Configuration block for the collection group's indexing and search capacity limits. See `capacityLimits` below for details.
  final pulumi.Input<List<ServerlessCollectionGroupCapacityLimit>>? capacityLimits;
  /// Date the collection group was created.
  final pulumi.Input<String>? createdDate;
  /// Description of the collection group.
  final pulumi.Input<String>? description;
  /// Generation of Amazon OpenSearch Serverless for the collection group. Valid values are `CLASSIC` and `NEXTGEN`. Default value is `CLASSIC`.
  final pulumi.Input<String>? generation;
  /// Name of the collection group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Indicates whether standby replicas should be used for collections in this group. Valid values are `ENABLED` and `DISABLED`. If `generation` is set to `NEXTGEN`, this argument must be set to `ENABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? standbyReplicas;
  /// A map of tags to assign to the collection group. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ServerlessCollectionGroupState].
  /// [arn] Amazon Resource Name (ARN) of the collection group.
  /// [capacityLimits] Configuration block for the collection group's indexing and search capacity limits. See `capacityLimits` below for details.
  /// [createdDate] Date the collection group was created.
  /// [description] Description of the collection group.
  /// [generation] Generation of Amazon OpenSearch Serverless for the collection group. Valid values are `CLASSIC` and `NEXTGEN`. Default value is `CLASSIC`.
  /// [name] Name of the collection group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standbyReplicas] Indicates whether standby replicas should be used for collections in this group. Valid values are `ENABLED` and `DISABLED`. If `generation` is set to `NEXTGEN`, this argument must be set to `ENABLED`.
  /// [tags] A map of tags to assign to the collection group. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ServerlessCollectionGroupState({
    this.arn,
    this.capacityLimits,
    this.createdDate,
    this.description,
    this.generation,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacityLimits': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCollectionGroupCapacityLimit>, List<Map<String, dynamic>>>(capacityLimits, (value) => pulumi.Input.encodeList<ServerlessCollectionGroupCapacityLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdDate': ?createdDate,
      'description': ?description,
      'generation': ?generation,
      'name': ?name,
      'region': ?region,
      'standbyReplicas': ?standbyReplicas,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ServerlessCollectionGroupState.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityLimits: (() { final guardedValue = map['capacityLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCollectionGroupCapacityLimit>(guardedValue, (value) => ServerlessCollectionGroupCapacityLimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyReplicas: (() { final guardedValue = map['standbyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
