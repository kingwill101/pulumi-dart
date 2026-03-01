// ignore_for_file: unused_element, unnecessary_cast

/// An accelerator card attached to the instance.
class AcceleratorResponse {
  /// Optional. Number of accelerator cards exposed to the instance.
  final int count;

  /// Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  final String type;

  /// Creates a new [AcceleratorResponse].
  /// [count] Optional. Number of accelerator cards exposed to the instance.
  /// [type] Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  AcceleratorResponse({required this.count, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'type': type};
  }

  factory AcceleratorResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorResponse(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
