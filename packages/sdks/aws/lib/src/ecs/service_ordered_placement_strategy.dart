// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceOrderedPlacementStrategy {
  /// For the `spread` placement strategy, valid values are `instanceId` (or `host`, which has the same effect), or any platform or custom attribute that is applied to a container instance. For the `binpack` type, valid values are `memory` and `cpu`. For the `random` type, this attribute is not needed. For more information, see [Placement Strategy](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PlacementStrategy.html).
  final pulumi.Input<String>? field;
  /// Type of placement strategy. Must be one of: `binpack`, `random`, or `spread`
  ///
  /// &gt; **Note:** for `spread`, `host` and `instanceId` will be normalized, by AWS, to be `instanceId`. This means the statefile will show `instanceId` but your config will differ if you use `host`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceOrderedPlacementStrategy].
  /// [field] For the `spread` placement strategy, valid values are `instanceId` (or `host`, which has the same effect), or any platform or custom attribute that is applied to a container instance. For the `binpack` type, valid values are `memory` and `cpu`. For the `random` type, this attribute is not needed. For more information, see [Placement Strategy](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PlacementStrategy.html).
  /// [type] Type of placement strategy. Must be one of: `binpack`, `random`, or `spread`
  const ServiceOrderedPlacementStrategy({
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': type,
    };
  }

  factory ServiceOrderedPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return ServiceOrderedPlacementStrategy(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
