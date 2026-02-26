// ignore_for_file: unused_element, unnecessary_cast

/// An accelerator card attached to the instance.
class Accelerator2 {
  /// Optional. Number of accelerator cards exposed to the instance.
  final int? count;

  /// Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  final String? type;

  Accelerator2({
    this.count,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory Accelerator2.fromMap(Map<String, dynamic> map) {
    return Accelerator2(
      count: map['count'] == null ? null : map['count'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
