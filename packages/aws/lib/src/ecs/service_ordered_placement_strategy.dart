// ignore_for_file: unused_element, unnecessary_cast

class ServiceOrderedPlacementStrategy {
  /// For the `spread` placement strategy, valid values are `instanceId` (or `host`, which has the same effect), or any platform or custom attribute that is applied to a container instance. For the `binpack` type, valid values are `memory` and `cpu`. For the `random` type, this attribute is not needed. For more information, see [Placement Strategy](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PlacementStrategy.html).
  final String? field;

  /// Type of placement strategy. Must be one of: `binpack`, `random`, or `spread`
  ///
  /// > **Note:** for `spread`, `host` and `instanceId` will be normalized, by AWS, to be `instanceId`. This means the statefile will show `instanceId` but your config will differ if you use `host`.
  final String type;

  /// Creates a new [ServiceOrderedPlacementStrategy].
  /// [field] For the `spread` placement strategy, valid values are `instanceId` (or `host`, which has the same effect), or any platform or custom attribute that is applied to a container instance. For the `binpack` type, valid values are `memory` and `cpu`. For the `random` type, this attribute is not needed. For more information, see [Placement Strategy](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PlacementStrategy.html).
  /// [type] Type of placement strategy. Must be one of: `binpack`, `random`, or `spread`
  ServiceOrderedPlacementStrategy({this.field, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'field': ?field, 'type': type};
  }

  factory ServiceOrderedPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return ServiceOrderedPlacementStrategy(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}
