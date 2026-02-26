// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTemplateGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;

  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  GetInstanceTemplateGuestAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['type'] = type;
    return map;
  }

  factory GetInstanceTemplateGuestAccelerator.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateGuestAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
