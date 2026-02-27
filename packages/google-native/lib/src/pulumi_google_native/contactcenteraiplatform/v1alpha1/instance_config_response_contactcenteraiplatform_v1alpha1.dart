// ignore_for_file: unused_element, unnecessary_cast

/// Message storing the instance configuration.
class InstanceConfigResponseContactcenteraiplatformV1alpha1 {
  /// The instance size of this the instance configuration.
  final String instanceSize;

  InstanceConfigResponseContactcenteraiplatformV1alpha1({
    required this.instanceSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSize'] = instanceSize;
    return map;
  }

  factory InstanceConfigResponseContactcenteraiplatformV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return InstanceConfigResponseContactcenteraiplatformV1alpha1(
      instanceSize: map['instanceSize'] as String,
    );
  }
}
