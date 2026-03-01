// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceClassesClass {
  /// KVStore available instance class.
  final String instanceClass;
  final String price;

  /// Creates a new [GetInstanceClassesClass].
  /// [instanceClass] KVStore available instance class.
  /// [price] Required.
  GetInstanceClassesClass({
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
      instanceClass: map['instanceClass'] as String,
      price: map['price'] as String,
    );
  }
}

