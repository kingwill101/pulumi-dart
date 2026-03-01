// ignore_for_file: unused_element, unnecessary_cast

/// An accelerator card attached to the instance.
class Accelerator {
  /// Optional. Number of accelerator cards exposed to the instance.
  final int? count;

  /// Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  final String? type;

  /// Creates a new [Accelerator].
  /// [count] Optional. Number of accelerator cards exposed to the instance.
  /// [type] Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  Accelerator({this.count, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': ?count, 'type': ?type};
  }

  factory Accelerator.fromMap(Map<String, dynamic> map) {
    return Accelerator(
      count: map['count'] == null ? null : map['count'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
