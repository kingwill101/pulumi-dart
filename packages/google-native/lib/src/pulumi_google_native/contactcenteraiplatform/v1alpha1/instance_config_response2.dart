// ignore_for_file: unused_element, unnecessary_cast

/// Message storing the instance configuration.
class InstanceConfigResponse2 {
  /// The instance size of this the instance configuration.
  final String instanceSize;

  InstanceConfigResponse2({
    required this.instanceSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSize'] = instanceSize;
    return map;
  }

  factory InstanceConfigResponse2.fromMap(Map<String, dynamic> map) {
    return InstanceConfigResponse2(
      instanceSize: map['instanceSize'] as String,
    );
  }
}
