// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  final String accelerator;

  /// Creates a new [GetServiceTemplateNodeSelector].
  /// [accelerator] The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  GetServiceTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator;
    return map;
  }

  factory GetServiceTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateNodeSelector(
      accelerator: map['accelerator'] as String,
    );
  }
}
