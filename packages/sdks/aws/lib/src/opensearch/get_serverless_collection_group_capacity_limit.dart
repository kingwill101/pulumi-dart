// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerlessCollectionGroupCapacityLimit {
  /// Maximum indexing capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  final pulumi.Input<double> maxIndexingCapacityInOcu;
  /// Maximum search capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  final pulumi.Input<double> maxSearchCapacityInOcu;
  /// Minimum indexing capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  final pulumi.Input<double> minIndexingCapacityInOcu;
  /// Minimum search capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  final pulumi.Input<double> minSearchCapacityInOcu;

  /// Creates a new [GetServerlessCollectionGroupCapacityLimit].
  /// [maxIndexingCapacityInOcu] Maximum indexing capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  /// [maxSearchCapacityInOcu] Maximum search capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  /// [minIndexingCapacityInOcu] Minimum indexing capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  /// [minSearchCapacityInOcu] Minimum search capacity, in OpenSearch Compute Units (OCUs), for the collection group.
  const GetServerlessCollectionGroupCapacityLimit({
    required this.maxIndexingCapacityInOcu,
    required this.maxSearchCapacityInOcu,
    required this.minIndexingCapacityInOcu,
    required this.minSearchCapacityInOcu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxIndexingCapacityInOcu': maxIndexingCapacityInOcu,
      'maxSearchCapacityInOcu': maxSearchCapacityInOcu,
      'minIndexingCapacityInOcu': minIndexingCapacityInOcu,
      'minSearchCapacityInOcu': minSearchCapacityInOcu,
    };
  }

  factory GetServerlessCollectionGroupCapacityLimit.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupCapacityLimit(
      maxIndexingCapacityInOcu: pulumi.Input.fromValue((map['maxIndexingCapacityInOcu'] as num).toDouble()),
      maxSearchCapacityInOcu: pulumi.Input.fromValue((map['maxSearchCapacityInOcu'] as num).toDouble()),
      minIndexingCapacityInOcu: pulumi.Input.fromValue((map['minIndexingCapacityInOcu'] as num).toDouble()),
      minSearchCapacityInOcu: pulumi.Input.fromValue((map['minSearchCapacityInOcu'] as num).toDouble()),
    );
  }
}
