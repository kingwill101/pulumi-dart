// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceClassesClass {
  /// KVStore available instance class.
  final pulumi.Input<String> instanceClass;
  final pulumi.Input<String> price;

  /// Creates a new [GetInstanceClassesClass].
  /// [instanceClass] KVStore available instance class.
  /// [price] Required.
  const GetInstanceClassesClass({
    required this.instanceClass,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceClass': instanceClass,
      'price': price,
    };
  }

  factory GetInstanceClassesClass.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesClass(
      instanceClass: pulumi.Input.fromValue(map['instanceClass'] as String),
      price: pulumi.Input.fromValue(map['price'] as String),
    );
  }
}

