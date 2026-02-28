// ignore_for_file: unused_element, unnecessary_cast

class NodeTemplateAccelerator {
  /// The number of the guest accelerator cards exposed to this
  /// node template.
  final int? acceleratorCount;

  /// Full or partial URL of the accelerator type resource to expose
  /// to this node template.
  final String? acceleratorType;

  /// Creates a new [NodeTemplateAccelerator].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this
  /// [acceleratorType] Full or partial URL of the accelerator type resource to expose
  NodeTemplateAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    return map;
  }

  factory NodeTemplateAccelerator.fromMap(Map<String, dynamic> map) {
    return NodeTemplateAccelerator(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
    );
  }
}
