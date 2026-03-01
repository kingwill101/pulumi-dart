// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;
  /// The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  /// Creates a new [GetInstanceGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [type] The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  GetInstanceGuestAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'type': type,
    };
  }

  factory GetInstanceGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}

