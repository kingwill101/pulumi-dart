// ignore_for_file: unused_element, unnecessary_cast

/// An accelerator card attached to the instance.
class AcceleratorResponseWorkstationsV1beta {
  /// Optional. Number of accelerator cards exposed to the instance.
  final int count;

  /// Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  final String type;

  AcceleratorResponseWorkstationsV1beta({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['type'] = type;
    return map;
  }

  factory AcceleratorResponseWorkstationsV1beta.fromMap(
      Map<String, dynamic> map) {
    return AcceleratorResponseWorkstationsV1beta(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
