// ignore_for_file: unused_element, unnecessary_cast

class InstanceGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;

  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  /// Creates a new [InstanceGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  InstanceGuestAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['type'] = type;
    return map;
  }

  factory InstanceGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return InstanceGuestAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
