// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  final String accelerator;

  ServiceTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator;
    return map;
  }

  factory ServiceTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateNodeSelector(
      accelerator: map['accelerator'] as String,
    );
  }
}
