// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;

  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  /// Creates a new [InstanceTemplateGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  InstanceTemplateGuestAccelerator({required this.count, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'type': type};
  }

  factory InstanceTemplateGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateGuestAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
