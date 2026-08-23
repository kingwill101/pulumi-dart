// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_collection_groups_collection_group_summary_capacity_limit.dart';

class GetServerlessCollectionGroupsCollectionGroupSummary {
  /// Amazon Resource Name (ARN) of the collection group.
  final pulumi.Input<String> arn;
  /// Capacity limits configured for the collection group. See `capacityLimits` below for details.
  final pulumi.Input<List<GetServerlessCollectionGroupsCollectionGroupSummaryCapacityLimit>> capacityLimits;
  /// Epoch time, in milliseconds, when the collection group was created.
  final pulumi.Input<String> createdDate;
  /// Unique identifier for the collection group.
  final pulumi.Input<String> id;
  /// Name of the collection group.
  final pulumi.Input<String> name;
  /// Number of collections currently associated with the collection group.
  final pulumi.Input<int> numberOfCollections;
  /// Indicates whether standby replicas are used for collections in the group.
  final pulumi.Input<String> standbyReplicas;

  /// Creates a new [GetServerlessCollectionGroupsCollectionGroupSummary].
  /// [arn] Amazon Resource Name (ARN) of the collection group.
  /// [capacityLimits] Capacity limits configured for the collection group. See `capacityLimits` below for details.
  /// [createdDate] Epoch time, in milliseconds, when the collection group was created.
  /// [id] Unique identifier for the collection group.
  /// [name] Name of the collection group.
  /// [numberOfCollections] Number of collections currently associated with the collection group.
  /// [standbyReplicas] Indicates whether standby replicas are used for collections in the group.
  const GetServerlessCollectionGroupsCollectionGroupSummary({
    required this.arn,
    required this.capacityLimits,
    required this.createdDate,
    required this.id,
    required this.name,
    required this.numberOfCollections,
    required this.standbyReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'capacityLimits': pulumi.Input.mapInputValue<List<GetServerlessCollectionGroupsCollectionGroupSummaryCapacityLimit>, List<Map<String, dynamic>>>(capacityLimits, (value) => pulumi.Input.encodeList<GetServerlessCollectionGroupsCollectionGroupSummaryCapacityLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdDate': createdDate,
      'id': id,
      'name': name,
      'numberOfCollections': numberOfCollections,
      'standbyReplicas': standbyReplicas,
    };
  }

  factory GetServerlessCollectionGroupsCollectionGroupSummary.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupsCollectionGroupSummary(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      capacityLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerlessCollectionGroupsCollectionGroupSummaryCapacityLimit>(map['capacityLimits']!, (value) => GetServerlessCollectionGroupsCollectionGroupSummaryCapacityLimit.fromMap((value as Map).cast<String, dynamic>()))),
      createdDate: pulumi.Input.fromValue(map['createdDate'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      numberOfCollections: pulumi.Input.fromValue(map['numberOfCollections'] as int),
      standbyReplicas: pulumi.Input.fromValue(map['standbyReplicas'] as String),
    );
  }
}
